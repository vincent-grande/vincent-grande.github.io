---
layout: page
permalink: /research/
title: research
description: Interpretable geometry and topology for understanding complex data
nav: true
nav_order: 1
---

<div class="mx-auto" style="max-width: 740px;">
  {% include figure.liquid
    path="assets/img/TOPFteaser.png"
    class="img-fluid"
    alt="Three point clouds with rings and lobes highlighted in different colours."
    caption='TOPF colours each point by its strongest topological feature in real and simulated data. From <a href="https://arxiv.org/html/2406.02300v3">Grande and Schaub (2025)</a>.'
    width=1599
    height=867
    sizes="(min-width: 770px) 740px, calc(100vw - 30px)"
    loading="eager"
    zoomable=true
  %}
</div>

My research tries to relate the **global shape of data** to **individual observations or data points**. I develop methods at the intersection of topology, geometry, signal processing and machine learning to identify **which points contribute to large-scale structures**, how those structures change across scales, and what they mean for the applications. My aim is to turn geometric and topological concepts into interpretable representations for learning and scientific discovery, with biological data like single-cell data as a central application.

My approach draws on training in **pure mathematics**, **computer science** and **signal processing**, together with experience in collaborative **biological research**. Topology identifies higher-order global structures such as loops or cavities, geometry relates these to local relationships and detects medium-scale and local patterns, and signal processing allows us to relate all of these to the data. Machine learning, in turn, provides tools for learning representations or geometry tailored to specific scientific questions. The **Hodge Laplacian** provides a common basis for many of these tasks by extending graph-based analysis to signals on edges and higher-dimensional simplices. I use this connection to tie together global structure and local measurements, as well as to develop representations whose mathematical properties and scientific interpretation can be examined together.

### From global shape to individual observations

We live in times of unprecedented availability of complex high-dimensional biological data of the very foundations of life: In single-cell data, measurements of thousands of individual genes, chromatin accessibility, or spatial coordinates encode the story of **organ development and tissue self-organisation**, can tell where current organoid protocols fail on their road to be a faithful model of their human counterparts, or give clues about the inner working and development of disease. In parallel, measurements of human brain activity across spatial and temporal scales, together with artificial neural network models, are helping to uncover how **neural representations emerge and support human cognition**.

Acquiring these biological datasets is costly, and even after acquisition and publication, **many of their mysteries remain unsolved**, necessitating further method development.

In both of these examples, the measurements are high-dimensional, noisy, and very challenging to analyze. Still, the relationships between measurement dimensions of individual genes or neurons are highly constrained by an intricate and complex biological programme. Thus, patterns start to emerge if we look at them beyond individual points: All points together approximate a **lower-dimensional gene expression manifold** encoding all possible gene developmental trajectories, or a **neural activation manifold** ([Gardner et al., **Nature** 2022](https://www.nature.com/articles/s41586-021-04268-7)) consisting of all possible patterns of neural activations.

The **global geometry and topology** of these data can reflect biological organisation, from branching developmental trajectories and cyclic cellular programmes to periodic structure in neural representations. The position of individual points on these manifolds, in turn, reflects the current developmental state of a cell, the phase in a periodic biological programme, or more generally, the state of the underlying biological system and its relationship to other observed states. Often for interpreting biological processes, identifying the role of individual states is as important as quantifying the global structure in itself, yet the two are rarely connected: Topological Data Analysis provides the powerful language of topology to describe global shape, including the presence of loops, cavities, holes or components, yet often lacks a language to relate this to individual points, while standard manifold-learning methods investigate individual points and their relationships while being insensitive to global homology.


### Research contributions and current work

#### Localising topology

In Topological Point Cloud Clustering (TPCC), I developed a method for grouping points according to their **contributions to global topological features** [\[1\]][tpcc]. Topological Point Features (TOPF) extends this perspective to descriptors of individual points measuring relationship to homological features, evaluated on synthetic and real-world data and under noise and heterogeneous sampling [\[2\]][topf]. These methods connect topological information to the individual observations used in clustering and downstream learning. They address a question that dataset-level summaries like persistent homology leave open: which parts of a point cloud are responsible for which aspects of its global structure?

#### Measuring structure beyond homology

I developed tools that track **harmonic, gradient, and curl eigenmodes** of the Hodge Laplacian across a filtration [\[3\]][hodge-spectrum]. For edge signals, these components distinguish circulation around holes, potential-driven variation and local circulation around filled triangles. Gradient and curl energies provide continuous measures of departures from harmonic structure. Our work shows why small eigenvalues can have different meanings depending on the component they belong to, and uses this distinction for Hodge spectral clustering. Our subsequent multiscale Hodge energy signatures use filter banks to **localise spectral information on individual points** [\[4\]][hodge-signatures]. These methods help distinguish cluster interiors, connections between groups and regions surrounding holes, providing interpretable features for clustering and identifying the structural roles of individual observations. For example, separating gradient and curl modes helps identify candidate transitional cells between developmental populations.

#### Making circular coordinates interpretable

In joint work with Marina Meilă, I developed CIRCOL to select **scientifically meaningful circular coordinates** from a supplied dictionary [\[5\]][circol]. A loop in neural activity, for example, becomes informative when linked to an angular variable such as head direction. CIRCOL relates candidate coordinates to detected cohomology classes and selects a low-energy basis ‘explaining’ the topology of the data. We also prove **consistency of a cochain inner-product estimator** for fixed smooth differential 1-forms under non-uniform sampling. We combine interpretability with the mathematical foundations needed to compare candidate explanations.

#### Connecting geometry to developmental biology

I contributed to the mathematics of Hodge methods for **single-cell differentiation tree inference** in a collaboration with nephrologists and computational biologists for PHLOWER [\[6\]][phlower]. I continue to collaborate with the Kuppe Lab.

### Future research programme

My research programme aims to develop and understand interpretable geometric methods for complex data. I will divide my interdisciplinary programme into three main directions.

1. **Foundations of Hodge Laplacian methods and beyond** (Mathematics and Geometry)
2. **Geometry of single-cell data** (Biology and Applications)
3. **Interpreting topological neural networks** (Machine Learning)

### Selected references

1. V. P. Grande and M. T. Schaub. ICML 2023. [Topological Point Cloud Clustering][tpcc]
2. V. P. Grande and M. T. Schaub. ICML 2025. [Point-Level Topological Representation Learning on Point Clouds][topf]
3. V. P. Grande and M. T. Schaub. ICASSP 2024. [Disentangling the Spectral Properties of the Hodge Laplacian: Not All Small Eigenvalues Are Equal][hodge-spectrum]
4. V. P. Grande and M. T. Schaub. **Multiscale Localised Hodge Energy Signatures**. [Asilomar Conference on Signals, Systems, and Computers 2026][hodge-signatures] (accepted).
5. V. P. Grande and M. Meilă. arXiv, 2026. [Selecting Interpretable Circular Coordinates from Data][circol]
6. M. Cheng, J. Jansen, K. C. Reimer, V. P. Grande et al. **Nature Methods**, 2025. [PHLOWER leverages single-cell multimodal data to infer complex, multi-branching cell differentiation trajectories][phlower]

[tpcc]: https://arxiv.org/abs/2303.16716
[topf]: https://arxiv.org/abs/2406.02300
[hodge-spectrum]: https://arxiv.org/abs/2311.14427
[hodge-signatures]: https://cmsworkshops.com/Asilomar2026/view_session.php?SessionID=1303
[circol]: https://arxiv.org/abs/2607.08230
[phlower]: https://www.nature.com/articles/s41592-025-02870-5
