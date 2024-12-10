import sys
sys.path.insert(1, '/path/to/MIND/code/')
from MIND import compute_MIND


if __name__ == '__main__':
    path_to_surf_dir = sys.argv[1] # Specify path to surfer directory.
    parcellation = sys.argv[2] # Select which parcellation to use.
    output_dir = sys.argv[3]

## Specify features to include in MIND calculation. The following abbreviations specifies the ?h.thickness, ?h.curv, ?h.volume, ?h.sulc, and ?h.area Freesurfer surface features.
features = ['CT','SA','Vol','SD','MC']

## Returns a dataframe of regions X regions containing the final MIND network.
MIND = compute_MIND(path_to_surf_dir, features, parcellation,True) 

# save MIND
output_file = output_dir + '/MIND.csv'
MIND.to_csv(output_file, index=False)

