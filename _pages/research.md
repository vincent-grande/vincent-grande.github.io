---
layout: page
permalink: /research/
title: research
description: Exploring global features of networks using tools from topology, algebra, and homotopy theory.
nav: true
nav_order: 1
---

My research deals with the analysis of higher-order information in networks and point clouds. A central motive is to use a blend of techniques from algebra, topology and homotopy theory to explore the relationship between small scale connectivity data and other localised information, and large-scale behaviour and global properties of data sets.

#### Clustering Point Clouds in High-Dimensional Space Using Topological Information

Extracting information from a point cloud by clustering its points into different classes is one of most used concepts of data analysis. Standard clustering algorithms like $$k$$-means or Spectral Clustering, however, have a rather simple underlying notion of what makes different points belong to the same cluster: Proximity in space. However, sometimes correct cluster assignments can only be achieved using higher-order global information encoded in the point cloud. My research deals with trying to utilise various techniques from topology and algebra to generate meaningful topological features for clustering of point clouds.

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/protein.jpg" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/Robust.jpg" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

<div class="caption">
    Left: Clustering of NALCN Channelosome, a channel membrane protein, data by Kschonsak et al., 2022. Right: Generating features from topology makes them robust to noise by design.
</div>

#### Restart Strategies for Enforcing $$\omega$$-Regular Properties in Partially Observable Markov Chains

$$\omega$$-regular properties can encode safety and liveness properties of infinite runs of systems: We might want a web client to be able to load data packages for an unlimited number of times, or to hang only finitely often. Now we assume that we want to build a monitor enforcing this property. However, the only action available to this monitor is to restart the system. Now, the interesting question is: How much information on the state of the system does the restart monitor need in order to ensure that, with probability 1, there are only finitely many restarts and the run after the last restart satisfies the desired $$\omega$$-regular property? Surprisingly, it turns out that restart strategies exist with only minimal information on the chain and the state of the system.

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/restartingrobot.png" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    We model the system using a Markov chain. As a scientist, we naturally want the robot to make infinite coffee, but only break finitely many coffee mugs. (This is an example for an $$\omega$$-regular property, and the application they were defined for.)
</div>
