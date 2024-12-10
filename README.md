# Cortical_Similarity_Networks_Lifespan
﻿This repository provides code and source data that support the findings of the article entitled " Dissecting human cortical similarity networks across the lifespan " by Liang et al. (2024).

E-mail: <xyliang@mail.bnu.edu.cn>

## Data：

Growth\_curve\_global\_variance\_of\_MIND.mat

- The lifespan normative growth curve of the global variance of the MIND networks

Growth\_curve\_global\_mean\_of\_MIND.mat

- The lifespan normative growth curve of the global mean of MIND networks

Growth\_curve\_global\_mean\_of\_MIND\_short.mat

- The lifespan normative growth curve of the mean connectivity strength for short-range edges (shortest 15%)

Growth\_curve\_global\_mean\_of\_MIND\_middle.mat

- The lifespan normative growth curve of the mean connectivity strength for middle-range edges (15-60%)

Growth\_curve\_global\_mean\_of\_MIND\_long.mat

- The lifespan normative growth curve of the mean connectivity strength for long-range edges (longest 40%)

Growth\_curve\_modularity\_of\_MIND.mat

- The lifespan normative growth curve of the modularity of the MIND networks

Growth\_curve\_Gamma\_of\_MIND.mat

- The lifespan normative growth curve of the Gamma of the MIND networks

Growth\_curve\_Lambda\_of\_MIND.mat

- The lifespan normative growth curve of the Lambda of the MIND networks

Growth\_curve\_Sigma\_of\_MIND.mat

- The lifespan normative growth curve of the Sigma of the MIND networks

Growth\_curve\_PS\_PS\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength within primary sensory zones

Growth\_curve\_PS\_PSS\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary sensory and primary/secondary sensory zones

Growth\_curve\_PS\_PM\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary sensory and primary motor zones

Growth\_curve\_PS\_AC1\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary sensory and association cortex I zones

Growth\_curve\_PS\_AC2\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary sensory and association cortex II zones

Growth\_curve\_PS\_LB\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary sensory and limbic zones

Growth\_curve\_PS\_IC\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary sensory and insular zones

Growth\_curve\_PSS\_PSS\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength within primary/secondary sensory zones.

Growth\_curve\_PSS\_PM\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary/secondary sensory and primary motor zones

Growth\_curve\_PSS\_AC1\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary/secondary sensory and association cortex I zones

Growth\_curve\_PSS\_AC2\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary/secondary sensory and association cortex II zones

Growth\_curve\_PSS\_LB\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary/secondary sensory and limbic zones

Growth\_curve\_PSS\_IC\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary/secondary sensory and insular zones

Growth\_curve\_PM\_PM\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength within primary motor zones

Growth\_curve\_PM\_AC1\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary motor and association cortex I zones

Growth\_curve\_PM\_AC2\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary motor and association cortex II zones

Growth\_curve\_PM\_LB\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary motor and limbic zones

Growth\_curve\_PM\_IC\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between primary motor and insular zones

Growth\_curve\_AC1\_AC1\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength within association cortex I zones

Growth\_curve\_AC1\_AC2\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between association cortex I and association cortex II zones

Growth\_curve\_AC1\_LB\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between association cortex I and limbic zones

Growth\_curve\_AC1\_IC\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between association cortex I and insular zones

Growth\_curve\_AC2\_AC2\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength within association cortex II zones

Growth\_curve\_AC2\_LB\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between association cortex II and limbic zones

Growth\_curve\_AC2\_IC\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between association cortex II and insular zones

Growth\_curve\_LB\_LB\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength within limbic zones

Growth\_curve\_LB\_IC\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength between limbic and insular zones

Growth\_curve\_IC\_IC\_MIND.mat

- The lifespan normative growth curve of the mean connectivity strength within insular zones

Growth\_curve\_ROI\_level\_MIND.mat

- The lifespan normative growth curves (50th centile) of morphometric similarity strength for each brain region

Growth\_curve\_global\_SC-FC\_coupling.mat

- The lifespan normative growth curve of the global SC-FC coupling

Growth\_curve\_ROI\_level\_coupling.mat

- The lifespan normative growth curves (50th centile) of SC-FC coupling for each brain region

## Installation guide：

All the scripts (\*.m files in the code folder) and the toolboxes can be executed by adding the appropriate environment paths according to the corresponding code language. Use the "add path" function for Matlab, the "pip install" function for Python, and the "install.packages()" function for R. These procedures are not time-consuming.

## Code:

Quality control for raw images

- MRIQC v0.15.0 (https://github.com/nipreps/mriqc)

Data preprocessing

- QuNex v0.93.2 (https://gitlab.qunex.yale.edu/)
- HCP pipeline v4.4.0-rc-MOD-e7a6af9 (https://github.com/Washington-University/HCPpipelines/releases)
- ABCD-HCP pipeline v1 (https://github.com/DCAN-Labs/abcd-hcp-pipeline)
- dHCP structural pipeline v1 (https://github.com/BioMedIA/dhcp-structural-pipeline)
- dHCP functional pipeline v1 (https://git.fmrib.ox.ac.uk/seanf/dhcp-neonatal-fmri-pipeline)
- iBEAT pipeline v1.0.0 (https://github.com/iBEAT-V2/iBEAT-V2.0-Docker)

Data postprocessing

- MATLAB R2018b (https://www.mathworks.com/products/matlab.html)
- SPM12 toolbox v6470 (https://www.fil.ion.ucl.ac.uk/spm/software/spm12)
- GRETNA toolbox v2.0.0 (https://www.nitrc.org/projects/gretna)
- cifti-matlab toolbox v2 (https://github.com/Washington-University/cifti-matlab)

Morphometric INverse Divergence (MIND) network calculation 

- run\_MIND.py
  - Python v3.8.13 (https://www.python.org) 
  - Open Python code for the estimation of MIND networks (https://github.com/isebenius/MIND) 

Normative modeling

- GAMLSS\_Model\_Fitting.R
  - R v4.2.0 (<https://www.r-project.org>),
  - GAMLSS package v5.4-3 (https://www.gamlss.com/)

Spin test

- Open Matlab code package for conducting the spin test (<https://github.com/frantisekvasa/rotate_parcellation>)

Support vector regression (SVR) 

- Open Matlab code package for performing the SVR model (<https://github.com/ZaixuCui/Pattern_Regression_Clean/tree/master/SVR>)

Visualization

- plot\_Normative\_Growth\_Curve.m
- Plot the normative growth curve
- plot\_Normative\_Growth\_Rate.m
- Plot the growth rate
- Plot\_Normative\_Growth\_Brain\_map.m
- Plot the brain maps of normative growth pattern 
- Surface-based Desikan-Kiliany 318-parcellation files were downloaded at (https://github.com/RafaelRomeroGarcia/subParcellation\_symmetric)
- MATLAB R2018b (https://www.mathworks.com/products/matlab.html)
- BrainNet Viewer toolbox v 20191031 (https://www.nitrc.org/projects/bnv)
- Connectome Workbench v1.5.0 (https://www.humanconnectome.org/software/connectome-workbench)
- R v4.2.0 (https://www.r-project.org)
- ggplot2 package v3.4.2 (https://ggplot2.tidyverse.org/)

We thank the authors and developers for providing these data analysis tools.
