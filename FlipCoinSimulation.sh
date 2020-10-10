#!/bin/bash -x

echo "------Welcome To Flip Coin Simulation------"

HEAD=0
flipCoin=$((RANDOM%2))
if [ $flipCoin == $HEAD ]
then
	echo "Head"
else
	echo "Tail"
fi

