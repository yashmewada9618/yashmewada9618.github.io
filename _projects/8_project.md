---
layout: page
title: Navigation stack using IMU and RTK-GPS with ROS.
description: ROS drivers for navigation stack based on IMU and GPS sensors
img: assets/img/pltad.png
importance: 4
category: work
---

<a href="https://github.com/yashmewada9618/ROS-navigation-stack-using-IMU-and-RTK-GPS">GitHub1</a>

<a href="https://github.com/yashmewada9618/Dead-Reckoning-using-IMU">GitHub2</a>

Developed ROS drivers for 9 axis IMU, Standard GPS Puck and RTK based GPS device. This whole project focused on analysing different effects of environment and physical interferences on these devices. For instance comapring the performance of standard GPS device and Real Time Kinematic GPS sensor when affected with Multipath effects, performing allan variance analysis on VN-100 IMU sensor to check its rate random walk, angle random walk and bias stability. Lastly these studies were used for performing dead reckoning on top of IMU data. Algorithms used in this project were as below.

- Complimentary Filter.
- Trajectory Estimation
- Velocity Estimation
- Dead Reckoning
- Magnetometer Calibration


<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/plot-est_traj.png" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/pltutm.png" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/pltutm.png" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/plot-complemetary_filter.png" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/plot-calibrated_mag.png" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>