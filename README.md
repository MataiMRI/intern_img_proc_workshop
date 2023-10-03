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
module purge && module load Python/3.11.3-gimkl-2022a
python -m venv venv
venv/bin/pip install -r requirements.txt
module purge && module load JupyterLab
nesi-add-kernel -v ./venv -- matai_training_2023 Python/3.11.3-gimkl-2022a
```

Remove the kernel and the virtual environment using

```
module purge && module load JupyterLab
jupyter-kernelspec remove -y matai_training_2023
rm ./venv -rf
```
