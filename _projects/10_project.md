---
layout: page
title: Robo Rugby.
description: ABU-Robocon 2020 Robotics Competition.
img: assets/img/g20ach.png
importance: 8
category: work
---

<a href="https://www.youtube.com/watch?v=Vfn6hGiWpeg">Youtube</a>

Programmed two semi-autonomous robots to perform the tasks of a rugby game.
Consisted of one pass robot and one try robot. The pass robot passed the rugby ball to the try robot and then the try robot positioned itself to a static position in the arena and kicked the ball, making sure it passes through the conversion post.

- Implemented PID control filtering on IMU and wheel odometry for autonomous robot navigation.
- Utilized Free-RTOS to control various actuators of a semi-autonomous robot with better task shifting and task scheduling.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/g20.png" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/g20rbt.png" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>