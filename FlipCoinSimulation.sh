#!/bin/bash -x

echo "------Welcome To Flip Coin Simulation------"

HEAD=0
headCount=0
tailCount=0

declare -A singletFlip
read -p "Enter the Number of Coin Flip : " numberOfCoinFlip

#TO STORE HEAD COUNT AND TAIL COUNT IN DICTIONARY
for(( count=0; count<$numberOfCoinFlip; count++ ))
do
   FlipCoin=$(( RANDOM % 2 ))

   if [ $FlipCoin -eq $HEAD ]
   then
      singletFlip[HEAD]=$((++headCount))
   else
      singletFlip[TAIL]=$((++tailCount))
   fi
done

singletHeadPercentage=`echo "scale=2; $headCount * 100 / $numberOfCoinFlip" | bc`
singletTailPercentage=`echo "scale=2; $tailCount *100 / $numberOfCoinFlip" | bc`

echo "To single head percentage and head count:$headCount : " $singletHeadPercentage
echo "To single tail percentage and tail count:$tailCount : " $singletTailPercentage
