1.a)Help user find degF or degC based on their Conversion Selection. Use
Case Statement and ensure that the inputs are within the Freezing Point 
(0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
a. degF = (degC * 9/5) + 32
b. degC = (degF – 32) * 5/9

#!/bin/bash -x
echo "*** Converting between the different temperature scales ***"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
funtion get_temperature{
local choice=$1
case $choice in
        1)echo -n "Enter temperature (C) : "
          read tc
          tf=$(echo "scale=2;((9/5) * $tc) + 32"|bc )
          echo "$tc C = $tf F"
          ;;
        2)echo -n "Enter temperature (F) : "
          read tf
          tc=$(echo "scale=2;(5/9)*($tf-32)"|bc)
          echo "$tf = $tc"
          ;;
        *)
          echo "Invalid number"
      echo $choice
esac
}
result="$( get_temperature $(($choice)) )"
echo result