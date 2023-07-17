---
layout: page
permalink: /NIPH/
title: NIPH
description: Non-isotropic Persistent Homology.
nav: false
nav_order: 
---
This is an ongoing project. Here is a link to the <a href='../../assets/pdf/NIPHmainTAGML.pdf'>extended abstract</a>. I would be very happy about any comments, ideas, and feedback!
## Abstract
Persistent Homology is a widely used topological data analysis  tool that creates a concise description of the topological properties of a point cloud based on a specified filtration. Most filtrations used for persistent homology depend (implicitly) on a chosen metric, which is typically agnostically chosen as the standard euclidean metric on $$\mathbb{R}^n$$. Recent work has tried to uncover the “true” metric on the point cloud using distance-to-measure functions, in order to obtain more meaningful per- sistent homology results. Here we propose an alternative look at this problem: we posit that information on the point cloud is lost when restricting persistent homology to a single (correct) distance function. Instead we show how by varying the distance function on the underlying space and analysing the corresponding shifts in the persistence diagrams, we can extract additional topological and geometrical information. Finally, we numerically show that non-isotropic persistent homology can extract information on orientation, orientational variance, and scaling of randomly generated point clouds with good accuracy.

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/ChangingPhi.gif" class="img-fluid rounded z-depth-1" zoomable=true %}
        <figcaption class="figure-caption text-center">Shown is the multiplicative death shift density curve of an oriented point cloud as the orientation changes with phi. We see how the different peaks, representing different orientational directions, travel between a factor of 1.0 (no orientation in this direction) and 2.0 (full orientation in this direction).</figcaption>
    </div>