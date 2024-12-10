%% load ROI-level normative growth curves
load('/data/Growth_curve_ROI_level_MIND.mat')
Index = 1; % 0 year
Age_label = '0y';
inputdata = Y_centiles(Index,:);

%% mapping to fs_LR_32k
giiLpath = '/code/Visualization/lh.DK318.label.gii';
giiRpath = '/code/Visualization/rh.DK318.label.gii';
gii1 = gifti(giiLpath);
gii2 = gifti(giiRpath);
ParcelLabel = double([gii1.cdata;gii2.cdata]);
data_surf = zeros(length(ParcelLabel),1);
for i = 1:length(unique(ParcelLabel))-1
    data_surf(ParcelLabel==i) = inputdata(i);
end
outpath_txt = strcat('/code/Visualization/fitted_roi_MSS_',Age_label,'.txt');
save(outpath_txt,'data_surf','-ascii');

%% plot
surf = '/code/Visualization/FSaverage_inflated_32K.nv';
BrainNet_MapCfg(surf,outpath_txt,'Option.mat'); %The Option.mat file is defined by the user in the BrainNet Viewer toolbox.
