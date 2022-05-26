@echo on

D:
cd %~dp0

pause

git clone https://github.com/CorentinJ/Real-Time-Voice-Cloning.git

call conda create -y -n corentinjtts python=3.7

pause

call conda activate corentinjtts

pause

call conda install -y pytorch -c pytorch

call conda install -y torchvision torchaudio cudatoolkit=11.3 -c pytorch

pause

call conda install -y -c conda-forge ffmpeg


cd Real-Time-Voice-Cloning
call pip install -r requirements.txt

call pip install webrtcvad

pause

call python demo_cli.py

pause

echo DONE. YOU CAN CLOSE

cmd /k