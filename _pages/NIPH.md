---
layout: page
permalink: /NIPH/
title: Disentangling the Spectral Properties of the Hodge Laplacian.
description: Not All Small Eigenvalues Are Equal
nav: false
nav_order: 
---
## Link to paper and code

Click here for the <a href='https://arxiv.org/abs/2311.14427'>arxiv version</a> and here for the <a href='https://git.rwth-aachen.de/netsci/2024-disentangling-the-spectral-properties-of-the-hodge-laplacian'>code</a>! 

## Music version

You can now _listen_ to Figure 2! I have converted the lowest eigenvalues of the Hodge Laplacian to frequency (over a threshold frequency) and added a beat representing the x-axis.
{% include audio.liquid path='assets/audio/SoundsOfPersistence.mp3' controls=true %}
## Abstract
The rich spectral information of the graph Laplacian has been instrumental in graph theory, machine learning, and graph signal processing for applications such as graph classification, clustering, or eigenmode analysis. Recently, the Hodge Laplacian has come into focus as a generalisation of the ordinary Laplacian for higher-order graph mod- els such as simplicial and cellular complexes. Akin to the traditional analysis of graph Laplacians, many authors analyse the smallest eigenvalues of the Hodge Laplacian, which are connected to important topological properties such as homology. However, small eigenvalues of the Hodge Laplacian can carry different information depending on whether they are related to curl or gradient eigenmodes, and thus may not be comparable. We therefore introduce the notion of persistent eigenvector similarity and provide a method to track individual harmonic, curl, and gradient eigenvectors/-values through the so-called persistence filtration, leveraging the full information contained in the Hodge-Laplacian spectrum across all possible scales of a point cloud. Finally, we use our insights (a) to introduce a novel form of Hodge spectral clustering and (b) to classify edges and higher-order simplices based on their relationship to the smallest harmonic, curl, and gradient eigenvectors.