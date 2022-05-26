@echo on

D:
cd /d %~dp0

pause

call conda create --offline -y -n corentinjtts python=3.7

pause

call conda activate corentinjtts

pause

::pendiente mover pkgs a corentinj\data-Instalador-OFFLINE\anaconda-install-pkgs

call conda install --offline -y pytorch -c pytorch

call conda install --offline -y torchvision torchaudio cudatoolkit=11.3 -c pytorch

pause

call conda install --offline -y -c conda-forge ffmpeg


cd Real-Time-Voice-Cloning
call pip install --no-index --find-links /data-Instalador-OFFLINE/pip-install -r requirements.txt


pause

echo DONE. YOU CAN CLOSE

cmd /k