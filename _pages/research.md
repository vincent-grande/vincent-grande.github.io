---
layout: page
permalink: /research/
title: research
description: Exploring global features of networks using tools from topology, algebra, and homotopy theory.
nav: true
nav_order: 1
---

### Higher-order Information Encoded in Networks and Point Clouds

<div class="row mt-3">
<div class="col-sm mt-3 mt-md-0">

My research deals with the analysis of higher-order information in networks and point clouds.
A central motive is to use a blend of techniques from algebra, topology, and homotopy theory to explore the relationship between small scale connectivity data and other localised information, and large-scale behaviour and global properties of data sets.

Over the last years, availability of large, complex data sets has increased dramatically with recent advances in collection, storage and processing techniques.
Extracting human-interpretable information from these is a challenging task across application scenarios.
Standard methods of data analysis include projecting the data set onto subspaces with the highest variance (PCA), clustering the data points using closeness- or density-based clustering algorithms (k-means, spectral clustering, DBSCAN, etc.), or fitting polynomials or other functions to the data points.
However in many cases, the information encoded in the point cloud cannot be retrieved by these methods: The detection of loops, voids, and holes in the point cloud requires tools that consider more than just proximity of points or local density.
These features are relevant when trying to analyse complex porteins consisting of multiple loops, or trying to understand the structure of a manifold in high-dimensional space from where the point cloud is sampled from.
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/protein.jpg" class="img-fluid rounded z-depth-1" zoomable=true %}
         <div class="caption">
    Proteins are molecules that consist of long strings of amino acid residues. They play an integral role in almost every cellular process from metabolism, DNA replication, to intra-cell logistics. Their diverse functions are hugely influenced by their complex 3d geometry, which arises by folding the chains of amino acid residues. In the figure: Clustering of NALCN Channelosome, a channel membrane protein, data by Kschonsak et al., 2022. The topological structure influencing the function of the protein consists of three loops, which our methods are able to identify correctly.
</div>
    </div>
   
</div>

From a different perspective, the loops of the protein and the structure of the manifold are **global** features of the point cloud.
By simply considering the **local** neighbourhoods of the points we cannot extract these higher-order features.

#### Combining Tools from Algebraic Topology and Network Sciencee

Algebraic Topology is an area of Mathematics that was established trying to provide tools for capturing the "essence" of topological spaces.
Topological features of a space are global and by design robust to local perturbations and noise, and are somewhat emergent properties of all the local connectivity data of the individual points.
This is ideal for the setting of modern data analysis, where the goal is to extract information out of data sets where local perturbations are likely to occur because of noisy data collection.

Current tools of topological data analysis provide a good way of generating these global invariants (Betti numbers, persistence landscapes, etc.) from local connectivity data of point clouds.
However, there is considerably less work on relating back these global features to the local scale of the points with a real-world meaning.
This is surprising, considering that extracting information like cluster assignments on a point level is highly useful in application scenarios and a key goal of many areas of data analysis.
A goal of my research is to find tools to relate global topological information on point clouds back to interpretable information on the point level.

Network Science, and especially signal processing on networks, on the other hand, deals with similar problems trying to connect the local connectivity information on network nodes to the global behaviour of the network and dynamics on it, and then relating this back to the individual nodes.

The overarching theme of my research is to combine perspectives of algebraic topology, network science, signal processing and clasical data anlysis to develop tools from extracting higher order information from point clouds and networks.

### Clustering Point Clouds in High-Dimensional Space Using Topological Information

Extracting information from a point cloud by clustering its points into different classes is one of most used concepts of data analysis. Standard clustering algorithms like $$k$$-means or Spectral Clustering, however, have a rather simple underlying notion of what makes different points belong to the same cluster: Proximity in space. However, sometimes correct cluster assignments can only be achieved using higher-order global information encoded in the point cloud. My research deals with trying to utilise various techniques from topology and algebra to generate meaningful topological features for clustering of point clouds.
Topological Point Cloud Clustering (TPCC) uses a remarkable connection between the eigenvectors of Hodge Laplace operators of simplicial complexes and their topology to cluster the underlying points based on their topological roles.
<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/FinalClustering.png" class="img-fluid rounded z-depth-1" zoomable=true %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/Robust.jpg" class="img-fluid rounded z-depth-1" zoomable=true %}
    </div>
</div>

<div class="caption">
    Left: Clustering of synthetic point cloud, 2022. Right: Using features from topology makes them robust to noise by design.
</div>

### Restart Strategies for Enforcing $$\omega$$-Regular Properties in Partially Observable Markov Chains

$$\omega$$-regular properties can encode safety and liveness properties of infinite runs of systems: We might want a web client to be able to load data packages for an unlimited number of times, or to hang only finitely often. Now we assume that we want to build a monitor enforcing this property. However, the only action available to this monitor is to restart the system. Now, the interesting question is: How much information on the state of the system does the restart monitor need in order to ensure that, with probability 1, there are only finitely many restarts and the run after the last restart satisfies the desired $$\omega$$-regular property? Previous approaches used information on the visited states to build candidates for bottom strongly components (BSSCs). The monitor would then restart once it was sure enough that it reached a BSSC that would lead to a violation of the desired property. Surprisingly, it turns out that restart strategies exist with far less information on the chain and the state of the system! In fact, by becoming increasingly hesistant to restart both during a single run and with each subsequent restart we were able to show that restart strategies only need access to the observed labels of the states visited during the run.

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/restartingrobot.png" class="img-fluid rounded z-depth-1" zoomable=true %}
    </div>
</div>
<div class="caption">
    We model the system using a Markov chain. As a scientist, we naturally want the robot to make infinite coffee, but only break finitely many coffee mugs. (This is an example for an omega-regular property, and the application they were almost surely defined for.)
</div>
