#!/bin/bash -x

echo "------Welcome To Flip Coin Simulation------"

isHEAD=0
NUMBER_OF_COIN=2

declare -A singletFlip
read -p "Enter the Number of Coin Flip : " numberOfCoinFlip

#TO FUNCTION DOUBLET
function doublet()
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
		((doubletFlip[$coinSide]++))
		coinSide=""
	done

#TO TOTAL PERCENTAGE OF DOUBLET COMBINATION
function totalDoubletPercentage()
{
   for index in ${!doubletFlip[@]}
   do
      doubletFlip[$index]=`echo "scale=2; ${doubletFlip[$index]} * 100 / $numberOfCoinFlip" | bc`
   done

}

doublet
totalDoubletPercentage
