#!/bin/bash

# if homebrew (The OSX package manager) is installed this command should work, else find out how to install homebrew
sudo brew install libsndfile

git clone https://github.com/PaulBatchelor/Soundpipe 
cd Soundpipe/
make 
make install
cd .. 
git clone https://github.com/PaulBatchelor/Sporth
cd Sporth/
make 
make install 


# This command should generate a 5 second dialtone.wav file for the purpose of testing functionality. It will be saved in the Sporth directory.
sporth -d 5s -o dialtone.wav examples/dialtone.sp

echo "Find the \"dialtone.wav\" file in the /Sporth directory and test it with your preferred audio player. Try out other Sporth patches at http://paulbatchelor.github.io/proj/cook/"
