#!/bin/bash

# if homebrew (The OSX package manager) is installed this command should work, else find out how to install homebrew
sudo brew install libsndfile

sudo git clone https://github.com/PaulBatchelor/Soundpipe 
cd Soundpipe/
sudo make 
sudo make install
cd .. 
sudo git clone https://github.com/PaulBatchelor/Sporth
cd Sporth/
sudo make 
sudo make install 


# This command should generate a 5 second dialtone.wav file for the purpose of testing functionality. It will be saved in the Sporth directory.
sporth -d 5s -o dialtone.wav examples/dialtone.sp

