#!/bin/bash
source ./mult  # using the multiplication function as a library and calling it in the app file
while true; do
echo "welcome with AnasCalc press the following numbers to do the operation  1>>mul, 2>>dev, 3>>add and 4>>sub"
read oper
echo "enter the first num"
read num1
echo "enter the second num"
read num2
#function mult(){
#        result=$(($num1 * $num2))
 #       echo "the output of $num1 * $num2 = $result"
#}
function dev(){
        result=$(echo "scale=2;$num1 / $num2" |bc ) # return fraction numbers
        echo "the output of $num1 / $num2 = $result"
}
function add(){
        result=$(($num1 + $num2))
        echo "the output of $num1 + $num2 = $result"
}
function sub(){
        result=$(($num1 - $num2))
        echo "the output of $num1 - $num2 = $result"
}

case $oper in
	1)
		mult
		;;
        2)
		if [ $num2 -eq 0 ];then
			echo"!! you can not devide over zero please try again !!"
		else
			dev
		fi
                ;;
        3)
                add
                ;;
        4)
                sub
                ;;

esac
echo "for exit press -1"
read loop
if [ $loop -eq -1 ];then
	exit
fi
done
