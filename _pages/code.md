---
layout: page
permalink: /code/
title: code
description: A collection of the code used for producing the results of my papers.
nav: true
nav_order: 3
---

### Node-Level Topological Representation on Point Clouds :potted_plant:

We provide a python package to compute node-level topological point features (TOPF) on point clouds.
TOPF aims to capture the relationship between the point and the global topology of the point cloud.
After installing `Julia`, you can install `topf` on Linux and macOS using

    pip install topf

[Code](https://github.com/vincent-grande/topf)
[Paper](https://arxiv.org/abs/2406.02300)

### Disentangling the Spectral Properties of the Hodge Laplacian: Not All Small Eigenvalues Are Equal

We provide many cool tools to leverage and analyse the spectral properties of a family of Hodge Laplacians defined on a filtration of simplicial complexes on a point cloud. The paper was accepted for publication at the 2024 IEEE Conference on Acoustics, Speech, And Signal Processing (ICASSP).

<a href='https://git.rwth-aachen.de/netsci/2024-disentangling-the-spectral-properties-of-the-hodge-laplacian'>Code</a>
<a href='https://arxiv.org/abs/2311.14427'>Paper</a>

### Topological Point Cloud Clustering (TPCC)

TPCC is a new method to cluster points in an arbitrary point cloud based on their contribution to global topological features. TPCC synthesizes desirable features from spectral clustering and topological data analysis and is based on considering the spectral properties of a simplicial complex associated to the considered point cloud.

TPCC was accepted for publication at the International Conference on Machine Learning 2023.

<a href='https://git.rwth-aachen.de/netsci/publication-2023-topological-point-cloud-clustering'>Code</a>
<a href='https://arxiv.org/abs/2303.16716'>Paper</a>

### Non-Isotropic Persistent Homology (NIPH)

NIPH tracks changes in the PH diagram induced by changing the underlying metric of the point cloud to extract information on local orientations of point clouds.

<a href='https://git.rwth-aachen.de/netsci/publication-2023-non-isotropic-persistent-homology'>Code</a>
<a href='https://arxiv.org/abs/2310.16437'>Paper</a>

### Black-box Testing Liveness Properties of Partially Observable Stochastic Systems

We study black-box testing for stochastic systems and arbitrary ω-regular specifications, explicitly including liveness properties. We are given a finite-state probabilistic system that we can only execute from the initial state. We have no information on the number of reachable states, or on the probabilities; further, we can only partially observe the states. The only action we can take is to restart the system.

This paper was accepted for publication at the 50th EATCS International Colloquium on Automata,
Languages and Programming, 2023.

<a href='https://git.rwth-aachen.de/netsci/restarting-markov-chains-experiments'>Code</a>
<a href='https://arxiv.org/pdf/2303.03292.pdf'>Paper</a>

