# 2023 Mātai Intern fMRI workshop

This repository contains material for the 2023 Mātai Intern fMRI workshop.


## Installation

**These instructions are for the instructors only.**

Clone this repository, ideally in the workshop project folder

```
cd /nesi/project/uoaXXXXX/$USER
git clone https://github.com/MataiMRI/intern_img_proc_workshop.git
cd intern_img_proc_workshop
```

where `uoaXXXXX` is the NeSI project used for the workshop.

Then create a conda virtual environment and register it as a Jupyter kernel

```
export PROJECTID=uoaXXXXX
export VENV_PATH="/nesi/project/${PROJECTID}/fmri_workshop_venv"

module purge && module load Miniconda3/22.11.1-1
export PYTHONNOUSERSITE=1
conda env create -f environment.yml -p "$VENV_PATH"

module purge && module load JupyterLab
nesi-add-kernel --shared --account "$PROJECTID" --conda-path "$VENV_PATH" -- matai_training_2023
```


## Uninstallation

**These instructions are for the instructors only.**

*If you need to recreate the Conda environment and/or the associated Jupyter kernel, remove it first using these instructions.*

Remove the Conda environment as follows

```
export PROJECTID=uoaXXXXX
export VENV_PATH="/nesi/project/${PROJECTID}/fmri_workshop_venv"

module purge && module load Miniconda3/22.11.1-1
conda env remove -p "$VENV_PATH"
```

Remove the Jupyter kernel using

```
module purge && module load JupyterLab
jupyter-kernelspec remove -y matai_training_2023
```
