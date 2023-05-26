---
layout: page
title: Image Mosaicing
description: Image stiching and panorama generation.
img: assets/img/CorrepondencespostHomography.jpg
importance: 3
category: work
tags: formatting math
---

<a href="https://github.com/yashmewada9618/Image-Mosaicing">GitHub</a> \

The purpose of this project was to find corner features in multiple images and to align the images
in a mosaic by estimating a homography between corresponding features \
The basic outline of this project followed the below steps.
- Converting the images to grayscale and reading it.
- Apply Harris corner detection algorithm and compute Harris R function over the images.
- Find correspondences between the obtained corner points of two images by performing Normalised Cross Correlation (NCC).
\begin{equation}
    NCC= \frac{\sum_{i=1}^{25}x(i)y(i)}{\sqrt{(\sum_{i=1}^{25}x^2\sum_{i=1}^{25}y^2)}}    
\end{equation}
- stimate the homography using the above correspondences by utilising RANSAC.
- Rectify the images according to the homography matrix obtained from above.

**Homography Matrix** - Just like fundamental matrix in previous project, the Homography matrix is a matrix that states that
any two images with same planar surface in space are related by a transformation matrix with 8 degrees of freedom. This matrix is mainly ussed for immage rectification.
\begin{equation}
    \begin{bmatrix}
lx'\\\\
ly'\\\\
1 \\\\
\end{bmatrix}
= 
\begin{bmatrix}
h11  & h12 & h13\\\\
h21  & h22 & h23\\\\
h31  & h32 & h33\\\\
\end{bmatrix}
\begin{bmatrix}
rx\\\\
ry\\\\
1\\\\
\end{bmatrix}
\end{equation}

where l is left image pixel and r is right image pixel.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/CorrepondencespreHomography.jpg" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/just_homography.jpg" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>