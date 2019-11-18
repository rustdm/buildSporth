#!/bin/bash

sudo git clone https://github.com/PaulBatchelor/Soundpipe 
cd Soundpipe/
sudo make 
sudo make install
cd .. 
sudo git clone https://github.com/PaulBatchelor/Sporth
cd Sporth/
sudo make 
sudo make install 


# This command should play a 5 second dialtone for the purpose of testing functionality 
sporth -d 5s -o dialtone.wav examples/dialtone.sp

