---
layout: page
title: Stereo Vision
description: Image stiching and depth estimation.
img: assets/img/Epipolarlines.jpg
importance: 2
category: work
tags: formatting math
---

<a href="https://github.com/yashmewada9618/Sterreo-Vision">GitHub</a> \
The aim of this project was to find interesting features and correspondences between the left and right images using either the CORNERS and NCC algorithms or SIFT features and descriptors. The results are displayed by connecting corresponding features with different colored lines to make it easier to visualize. A program is also developed to estimate the Fundamental Matrix for each pair using the correspondences above and RANSAC to eliminate outliers.

**Fundamental Matrix** - In computer vision, a fundamental matrix is a 3x3 matrix that related the stereo images based on the epipolar lines. \ Fundamental matrices works with uncalibrated camera. Lets say $$v1$$ and $$v2$$ are the two corresponding feature points in a stereo pair of images. Hence for every these two paired points the following remains true...

\begin{equation}
    \begin{bmatrix} f_{11} & f_{12} & f_{13} \\\\ f_{21} & f_{22} & f_{23} \\\\ f_{31} & f_{32} & f_{33} \end{bmatrix} \begin{bmatrix} v_1x \\\\ v_1y \\\\ 1 \end{bmatrix}^\top \begin{bmatrix} v_2x \\\\ v_2y \\\\
    1 \end{bmatrix} = 0
\end{equation} 

Additionally, a dense disparity map is computed using the Fundamental Matrix to help reduce the search space. The output includes three images: one image with the vertical disparity component, another image with the horizontal disparity component, and a third image representing the disparity vector using color. The direction of the vector is coded by hue, and the length of the vector is coded by saturation. For grayscale display, the disparity values are scaled so that the lowest disparity is 0 and the highest disparity is 255. The results are discussed and sample images are presented in the report.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/Disparity.png" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/disprty.png" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>