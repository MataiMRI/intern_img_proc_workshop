# load miniconda module
module purge && module load Miniconda3
source $(conda info --base)/etc/profile.d/conda.sh
export PYTHONNOUSERSITE=1

# source the workshop conda environment
conda deactivate  # just in case someone as another environment loaded
conda activate /nesi/project/uoa03979/fmri_workshop_venv/
