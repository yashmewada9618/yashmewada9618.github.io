---
layout: page
title: Structure From Motion
description: 3D reconstruction based on sequence of images
img: assets/img/sfm.png
tags: formatting math
importance: 1
category: work
---

<a href="https://github.com/yashmewada9618/Structure-From-Motion-by-factorization">GitHub</a>
This project details a novel approach for Structure from Motion based on optical flow and factorization for the reconstruction of surfaces with few textures. 
An original image search and grouping strategy allows to the reconstruction of each 3D scene point using a large set of 2D homologous points extracted from a reference image
and its superimposed images acquired from different viewpoints. \
Factorization method based on cholensky decomposition was used here. The feautes were detected using SIFT feature detection. \
After these features were detected the **Spare Optical Flow** was used to track these features over the images. \
**Spare Optical Flow** - Let's assume you have a pixel with intensity function as $I(x,y,t)$ where x,y is the pixel coordinate and t is the time frame. Now after a certain amount of time, the pixel intensity shifted to a new location, then the new location of this pixel intensity will be equal to...
\begin{equation}
    I(x,y,t) = I(x + \Delta x,y + \Delta y,t + \Delta t)
\end{equation}
Using Taylor series expansion we can rewrite the equation as.
\begin{equation*}
    I(x,y,t) - I(x + \Delta x,y + \Delta y,t + \Delta t) = 0
\end{equation*}
\begin{equation*}
    I_x^{'} u + I_y^{'} v = -I_t^{'}
\end{equation*}
Where $u = \frac{dx}{dt}$ and $v = \frac{dy}{dt}$
Hence the pixel motion between two consecutive frames can be written as.
\begin{equation}
    I_1 - I_2 \approx I_x^{'} u + I_y^{'} v + I_t^{'}
\end{equation}
<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include video.html path="assets/video/sfm.gif" class="img-fluid rounded z-depth-1" controls=true autoplay=true %}
    </div>
</div>
