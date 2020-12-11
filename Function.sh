# Define function
getDate(){
    date

    return  # Return returns an exit status number between 0-255
}
getDate  # Execute the function

name="Derek"  # This is a global variable

demLocal(){
    local name="Paul"  # only available in this scope
    return
}
demLocal

echo "$name"

getSum(){
    local num3=$1
    local num4=$2
    local sum=$((num3+num4))
    echo $sum
}
num1=5
num2=6

# Pass arguments by separating them with a space
# Surround function call with $() to get the return value
sum=$(getSum num1 num2)
echo "The sum is $sum"





