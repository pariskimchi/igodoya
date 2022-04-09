

# Project: Idodoya project 
This project contains a application using Spring boot,AWS and a deep learning model to predict hair symptoms by uploading fixed hair images.



## Project Structure

```
Igodoya-main
|____Model			# Deep learning model code to predict hair loss
| |____train_HairLoss_multiple_Xception.ipynb           # CNN model to predict hair loss using Xception
| |____test_HairLoss_multiple_Xception_View.ipynb       # model predict test view
|
|____Model_Server			# EL pipline code from AWS S3
| |____HairLoss_Server.py		    # EL pipeline 
|
|____Spring_Web/igodoya/src			# Spring web application code
```

<iframe width="640" height="360" src="https://www.youtube.com/embed/A1Q7Nm0FDPE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
