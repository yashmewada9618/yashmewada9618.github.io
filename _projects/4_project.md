---
layout: page
title: Motion detection with simple Image Filtering.
description: Detection of motion based on temporal derivatinve of consecutive image frames.
img: assets/img/detection.jpg
importance: 3
category: work
---

<a href="https://github.com/yashmewada9618/Motion-Detection-with-Simple-Image-Filtering">GitHub</a>

The main idea behind this project was to explore a simple technique for motion detection in image sequences captured with a
stationary camera where most of the pixels belong to a stationary background and relatively small moving
objects pass in front of the camera. In this case, the intensity values observed at a pixel over time is a
constant or slowly varying signal, except when a moving object begins to pass through that pixel, in which
case the intensity of the background is replaced by the intensity of the foreground object. Thus, we can
detect a moving object by looking at large gradients in the temporal evolution of the pixel values. \
The basic outline of this project followed the below steps.
- Converting the images to grayscale and reading it.
- Applying 1-D differential operator to find the *temporal derivate* of that image. For experimenatal purposes the effect
of spatial and box filters was also analyzed.
- Thresholding the absolute value of the derivative to create a bianry mask of the moving objects
- combining the mask with the original image for results.
The main takeaway from this project was a conclusion that directly subtracting the images for motion detection is not one of the best solutions as
it does not give any information regarding the speed and direction of the motion.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/mask_thres.png" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>