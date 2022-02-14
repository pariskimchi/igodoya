import numpy as np
import boto3
import cv2
from PIL import Image
from keras.models import load_model, model_from_json

from flask import Flask, request, jsonify

from tensorflow.compat.v1 import ConfigProto
from tensorflow.compat.v1 import InteractiveSession

config = ConfigProto()
config.gpu_options.allow_growth = True
session = InteractiveSession(config=config)

app = Flask(__name__)
model = None
IMAGE_SHAPE = (299, 299)
BATCH_SIZE = 8
NB_CLASSES = 4
ACCESS_KEY = 'AKIAZT6EVI2QSYFTSRS3'
SECRET_KEY = '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'

@app.route('/')
def home():
    global model
    img_dir = 'img_file/' + request.args.get('img')
    x = imgLoad(img_dir)
    pred = model.predict(x)
    print('정상 확률 : ' + '{0:0.2f}'.format(100 * pred[0][0]))
    print('탈모 확률 : ' + '{0:0.2f}'.format(100 * pred[0][1]))
    percentage = {'normal':'{0:0.2f}'.format(100 * pred[0][0]), 'hairLoss':'{0:0.2f}'.format(100 * pred[0][1])}
    return jsonify(result="success", percentage=percentage)

def modelInit():
    global model
    json_file = open('model_normal_severe.json', 'r')
    loaded_model_json = json_file.read()
    json_file.close()

    model = model_from_json(loaded_model_json)
    model.load_weights('model_weights_normal_severe.h5')
    
def imgLoad(img_dir):
    s3 = boto3.resource('s3')

    bucket = s3.Bucket('igodoya-image')
    object = bucket.Object(img_dir)
    response = object.get()
    file_stream = response['Body']
    pil_image = Image.open(file_stream)

    numpy_image = np.array(pil_image)

    src_img = cv2.resize(numpy_image, dsize=IMAGE_SHAPE)
    dst_img = src_img / 255.0
    return np.expand_dims(dst_img, axis=0)

if __name__ == '__main__':
    modelInit()
    app.run(host='0.0.0.0', debug=True)