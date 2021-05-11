#!/bin/sh
git bisect start 
git bisect bad 
git bisect good 1c5438f45971dcce5ce6835cc148b159d9950586
until [-x calculator] 
do 
git bisect bad HEAD
g++ -o calculator calculator.cpp
done
git bisect reset
fi
