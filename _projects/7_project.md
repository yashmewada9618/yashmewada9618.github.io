---
layout: page
title: Autonomous Navigation and SLAM.
description: A complete autonomous system using turtlebot3.
img: assets/img/tb3.png
importance: 4
category: work
---

<a href="https://github.com/yashmewada9618/Team-Splinter-Autonomous-Ground-Robot-For-Reconnaissance">GitHub</a>

<a href="https://www.youtube.com/watch?v=gg17nGIT8wM">Youtube</a>

In this project, we designed and implemented a complete autonomous system to perform reconnaissance in a simulated disaster environment. Our system was able to do the following:
- Generated complete map of the environment using Catographer based SLAM.
- Locate the victims present in the environment.
For this project we used april tags as victims and the system was also able to specify the tag ID and orientation of the tag with respect to the world frame. \
To make sure all the apriltags gets detected from the environment, RRT (Rapidly exploraing Random Tree) based frontier exploration was used on top of ROS's move base package. 13 tags were successfully detected out of 15 placed in the environment. 


<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/ts1.jpeg" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/ts2.jpeg" title="disparity image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>