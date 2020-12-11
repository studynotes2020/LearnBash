str1=""
str2="Sad"
str3="Happy"

if [ "$str1" ]; then
    echo "$str1 is not null";
fi

if [ -z "$str1" ]; then
    echo "str1 has no value";
fi

if [ $str2 == $str3 ]; then
    echo "$str2 equals $str3"
elif [ $str2 != $str3 ]; then
    echo "$str2 is not equal to $str3"
fi

if [ $str2 > $str3 ]; then
    echo "$str2 is greater than $str3"
elif [ $str2 < $str3 ]; then
    echo "$str2 is less than $str3"
fi

# Store the original value of IFS
OIFS="$IFS"  # IFS input field separator
IFS=","  # Set what separates the input values

read -p "Enter 2 number to add separated by a comma" num1 num2
# Use the parameter expansion ${} to substitute any whitespace
# with nothing
num1=${num1//[[:blank:]]/}
num2=${num2//[[:blank:]]/}
sum=$((num1+num2))
echo "$num1 + $num2 = $sum"

# Reset IFS to the original value
IFS="$OIFS"

name="Jud"
echo "${name}'s toy"

# Search and replace
samp_string="The dog climbed the tree"
echo "${samp_string//dog/cat}"

echo "I am ${name:=Derek}"  # Assign Derek if name not exists



