#!/bin/bash -x

echo "------Welcome To Flip Coin Simulation------"

isHEAD=0
NUMBER_OF_COIN=3

declare -A tripletFlip
read -p "Enter the Number of Coin Flip : " numberOfCoinFlip

#TO FUNCTION DOUBLET
function triplet()
{
   for(( count=0; count<$numberOfCoinFlip; count++ ))
   do
      for(( countCoin=0; countCoin<$NUMBER_OF_COIN; countCoin++ ))
      do
         flipCoin=$(( RANDOM % 2 ))

         if [ $FlipCoin -eq $isHEAD ]
         then
            coinSide+=H
         else
            coinSide+=T
         fi
		done
		((tripletFlip[$coinSide]++))
		coinSide=""
	done

#TO TOTAL PERCENTAGE OF TRIPLET COMBINATION
function totalTripletPercentage()
{
   for index in ${!tripletFlip[@]}
   do
      tripletFlip[$index]=`echo "scale=2; ${tripletFlip[$index]} * 100 / $numberOfCoinFlip" | bc`
   done

}

triplet
totalTripletPercentage
