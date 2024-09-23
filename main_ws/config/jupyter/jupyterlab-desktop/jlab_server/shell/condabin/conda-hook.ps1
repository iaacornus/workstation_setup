$Env:CONDA_EXE = "/var/home/iaacornus/.var/app/org.jupyter.JupyterLab/config/jupyterlab-desktop/jlab_server/bin/conda"
$Env:_CE_M = ""
$Env:_CE_CONDA = ""
$Env:_CONDA_ROOT = "/var/home/iaacornus/.var/app/org.jupyter.JupyterLab/config/jupyterlab-desktop/jlab_server"
$Env:_CONDA_EXE = "/var/home/iaacornus/.var/app/org.jupyter.JupyterLab/config/jupyterlab-desktop/jlab_server/bin/conda"
$CondaModuleArgs = @{ChangePs1 = $True}
Import-Module "$Env:_CONDA_ROOT\shell\condabin\Conda.psm1" -ArgumentList $CondaModuleArgs

Remove-Variable CondaModuleArgs