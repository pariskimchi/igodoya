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
model_name = ['normal_severe', 'normal_mild', 'mild_severe']
model = []
IMAGE_SHAPE = (299, 299)
BATCH_SIZE = 8
NB_CLASSES = 4
ACCESS_KEY = 'AKIAZT6EVI2QSYFTSRS3'
SECRET_KEY = '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'


@app.route('/')
def home():
    img_dir = 'img_file/' + request.args.get('img')
    x = imgLoad(img_dir)
    percentage_List = []
    for i in range(len(model)):
        pred = model[i].predict(x)
        model_class = model_name[i].split('_')
        percentage_List.append({model_class[0]: '{0:0.2f}'.format(100 * pred[0][0]), model_class[1]: '{0:0.2f}'.format(100 * pred[0][1])})
    return jsonify(result='success', percentage=percentage_List)


def modelInit(modelName):
    fname = 'model_' + modelName + '.json'
    json_file = open(fname, 'r')
    loaded_model_json = json_file.read()
    json_file.close()

    model = model_from_json(loaded_model_json)
    fname = 'model_weights_' + modelName + '.h5'
    model.load_weights(fname)
    return model


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
    for i in model_name:
        model.append(modelInit(i))

    app.run(host='0.0.0.0', debug=True)