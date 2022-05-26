@echo on

cd /d %~dp0
cd Real-Time-Voice-Cloning

call conda activate corentinjtts

call python demo_toolbox.py