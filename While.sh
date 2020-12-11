rand_str="A random string"

echo "String Length : ${#rand_str}"
echo "${rand_str:2}"
echo "${rand_str:2:7}"
echo "${rand_str#*A }"

num=1
while [ $num -le 10 ]; do
    echo $num
    num=$((num + 1))
done

num=1
while [ $num -le 20 ]; do
    if (( ((num % 2)) == 0)); then
        num=$((num + 1))
        continue
    fi

    if ((num >= 15)); then
        break
    fi

    echo $num
    num=$((num + 1))
done

num=1
# opposite of while
until [ $num -gt 10 ]; do 
    echo $num
    num=$((num + 1))
done







