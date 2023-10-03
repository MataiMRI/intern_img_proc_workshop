# 2023 Mātai Intern fMRI workshop

This repository contains material for the 2023 Mātai Intern fMRI workshop.


## Installation

**These instructions are for the instructors only.**

Clone this repository

```
git clone https://github.com/MataiMRI/intern_img_proc_workshop.git
cd intern_img_proc_workshop
```

On NeSI, create a Python virtual environment and register it as a Jupyter kernel

```
export PROJECTID=uoaXXXXX
export VENV_PATH="/nesi/project/${PROJECTID}/fmri_workshop_venv"

module purge && module load Python/3.11.3-gimkl-2022a
export PYTHONNOUSERSITE=1
python -m venv --system-site-packages "$VENV_PATH"
"${VENV_PATH}/bin/pip" install -r requirements.txt

module purge && module load JupyterLab
nesi-add-kernel --shared --account "$PROJECTID" --venv "$VENV_PATH" -- matai_training_2023 Python/3.11.3-gimkl-2022a
```

where `uoaXXXXX` is the NeSI project used for the workshop.

Remove the virtual environment using

```
module purge && module load JupyterLab
jupyter-kernelspec remove -y matai_training_2023
```

and remove virtual environment by deleting the corresponding folder.
