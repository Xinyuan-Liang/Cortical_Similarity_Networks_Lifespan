# Cortical_Similarity_Networks_Lifespan
﻿This repository provides code and source data that support the findings of the article entitled " Dissecting human cortical similarity networks across the lifespan " by Liang et al. (2024).

E-mail: <xyliang@mail.bnu.edu.cn>

## Figure：
This folder contains the Overview of the Quality Control, Overview of the Surface Registration Strategy, and the results of all Sensitivity Analyses. The figures of the Sensitivity Analyses are provided as a visual supplement to Table S6 in the manuscript.

(1) Overview of the quality control.png

- Quality control of structural and functional MRI data involved a four-stage process for all participants, incorporating both automated evaluation methods and expert manual inspections. Following application of strict quality control, the final dataset included structural MR images from 33,937 healthy participants and 1,202 patients, with a subsample of 32,887 healthy participants having both structural and functional MR images.

(2) Overview of the surface registration strategy.png

- For participants from the DHCP dataset (postmenstrual age ranging from 37 to 42 weeks), the following surface registration steps were undertaken. First, individual surfaces were registered to the specific templates corresponding to the postmenstrual age of the participant. Second, templates for 37, 38, 39, 41, and 42 postmenstrual weeks were registered to the 40-week template. Third, the 40-week template was registered to the fs_LR_32k adult surface template. The parcellation atlas were first transformed from the fsaverage standard space to the fs_LR_32k space and subsequently registered back to each participant's native space. For participants aged 0–24 months, individual surfaces were aligned to their corresponding month-age templates. Next, these month-age templates were aligned to the 12-month template. The 12-month template was then aligned to the fs_LR_32k surface template. On the basis of the registration information obtained from the process described above, the parcellation atlas in the standard fs_LR_32k space was first registered back to the corresponding month-age template and then to each participant’s surface space. For participants aged two years and above, the parcellation atlas in the standard adult fsaverage space was registered directly back to each participant's native space. M, month; wk, week.

(3.1) Validation_Bootstrap resampling.png

- To assess the potential impact of sample variability on three global metrics, we conducted bootstrap analysis with 1,000 resamples. **a,** Solid lines indicate the 50th percentile curves of the main results, whereas the dotted lines denote the 95% confidence intervals. **b,** Regional-level MSS results from a single random bootstrap sample, showing brain maps of normative growth (top) and growth rate (bottom). **c,** Regional-level morphometric‒function coupling results from a single random bootstrap sample, showing brain maps of normative growth (top) and growth rate (bottom). m, month; yr, year; MSS, morphometric similarity strength.

(3.2.1) Validation_Split-half analysis for global level metrics.png

- We randomly divided all the participants into two halves, stratified by age and scanner site. For mapping the growth of the morphometric network, Subgroup 1 consisted of 17,071 individuals, and Subgroup 2 included 16,866 individuals. For mapping morphology‒function coupling growth, the subgroups comprised 16,445 and 16,442 individuals, respectively. **a,** Normative growth curve and growth rate of the global variance of the morphometric networks (top panels), global mean of the morphometric networks (middle panels), and global morphology‒function coupling (bottom panels) using the samples of Subgroup 1. **b,** Normative growth curve and growth rate of global variance of the morphometric networks (top panels), global mean of the morphometric networks (middle panels), and global morphology‒function coupling (bottom panels) using samples of the Subgroup 2. The solid line (median) represents the 50% centile, and the dotted lines represent the 5%, 25%, 75%, and 95% centiles. The growth rate was assessed with the first derivative of the median line, and 95% confidence intervals (gray shading) estimated through bootstrapping with 1,000 resamples. yr, year.

(3.2.2) Validation_Split-half analysis for regional-level MSS.png

- **a,** Normative growth curve (top panels) and growth rate curve (bottom panels) of regional-level MSS in Subgroup 1. **b,** Normative growth curve (top panels) and growth rate curve (bottom panels) of regional-level MSS in Subgroup 2. m, month; yr, year; MSS, morphometric similarity strength.

(3.2.3) Validation_Split-half analysis for regional-level morphology‒function coupling.png

- **a,** Normative growth curve (top panels) and growth rate curve (bottom panels) of regional-level coupling in Subgroup 1. **b,** Normative growth curve (top panels) and growth rate curve (bottom panels) of regional-level coupling in Subgroup 2. m, month; yr, year.

(3.3) Validation_LeaveOneSiteOut.png

- To assess the potential impact of site on three global metrics, we iteratively excluded one site from the dataset and re-estimated the GAMLSS models. **a,** Solid lines indicate the 50th centile curves of the main results, whereas the gray shading denotes the 95% confidence interval for both the LOSO normative growth curves (top panels) and growth rate curves (bottom panels). **b,** Regional-level MSS results for the sample with the largest site (UKB1) removed, showing brain maps of normative growth (top) and growth rate (bottom). **c,** Regional-level morphology‒function coupling results for the sample with the largest site (UKB1) removed, showing brain maps of normative growth (top) and growth rate (bottom). m, month; yr, year; MSS, morphometric similarity strength.

(3.4) Validation_BalancedResampling_strategyI.png

- To validate whether the results are influenced by the imbalance in sample size across different age groups, we adopted a balanced resampling strategy to achieve a balanced age distribution within each age group (N = 12,414 for mapping the growth of the morphometric network and N = 8,071 for mapping the growth of morphology‒function coupling, with resampling performed 1,000 times). **a,** Normative growth curves of the global variance of the morphometric network, the global mean of the morphometric network, and global morphology‒function coupling for a representative resampling instance. **b,** Solid lines indicate 50th percentile curves of the average 50% centile curves across 1,000 resampling, the dotted lines represent 5%, 25%, 75%, and 95% centiles. The gray shading denotes the 95% confidence interval for both the normative growth curves (top panels) and growth rate curves (bottom panels). **c,** Regional-level MSS results from a single balanced resampling sample, showing brain maps of normative growth (top) and growth rate (bottom). **d,** Regional-level morphology‒function coupling results from a single balanced resampling sample, showing brain maps of normative growth (top) and growth rate (bottom). m, month; yr, year; MSS, morphometric similarity strength. 

(3.5) Validation_BalancedResampling_strategyII.png

- To validate whether the results are influenced by the imbalance in sample size and the number of scanner sites across different age groups, we adopted a balanced resampling strategy (N = 11,114 for mapping the growth of the morphometric network and N = 7,555 for mapping the growth of morphology‒function coupling, with resampling performed 1,000 times) **a,** Solid lines indicate 50th percentile curves of the average 50% centile curves across 1,000 resampling, the dotted lines represent 5%, 25%, 75%, and 95% centiles. The gray shading denotes the 95% confidence interval for both the normative growth curves (top panels) and growth rate curves (bottom panels). **b,** Regional-level MSS results from a single balanced resampling sample, showing brain maps of normative growth (top) and growth rate (bottom). **c,** Regional-level morphology‒function coupling results from a single balanced resampling sample, showing brain maps of normative growth (top) and growth rate (bottom). m, month; yr, year; MSS, morphometric similarity strength.

(3.6) Validation_Cortical parcellation DK219.png

- To assess the stability of lifespan curves under different parcellation strategy, we re-estimated the growth curves using all healthy participants, parcellating their cortices into 219 cortical brain regions on the basis of the modified Desikan-Killiany atlas. **a,** Normative growth curve (top panels) and growth rate (bottom panels) of the global variance of the morphometric network, global mean of the morphometric network, and global morphology‒function coupling. The gray shading of the growth rate represents the 95% confidence intervals. **b,** Regional-level MSS results, showing brain maps of normative growth (top) and growth rate (bottom). **c,** Regional-level morphology‒function coupling results, showing brain maps of normative growth (top) and growth rate (bottom). m, month; yr, year; MSS, morphometric similarity strength. 

(3.7) Validation_LeaveOneFeatureOut.png

- To assess the MIND stability the of morphometric similarity estimation, we reconstructed the morphometric networks for each participant by removing one feature at a time. **a,** We assessed spatial correlations between the four-feature and original five-feature MSS maps at each corresponding time point (with intervals of 0.01 years). All correlation coefficients exceeded 0.95 across the lifespan. Among all the features, cortical thickness had the strongest influence on the morphometric similarity estimation. **b,** Brain maps showing the normative growth of the regional MSS after each feature was removed. yr, year; MSS, morphometric similarity strength; -CT, removed cortical thickness feature; -SA, removed surface area feature; -Vol, removed gray matter volume feature; -MC, removed mean curvature feature; -SD, removed sulcal depth feature.

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

