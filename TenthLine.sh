: '
Given a text file line.txt, print just the 10th line of the file.

Example:
Assume that file.txt has the following content:
Line 1
Line 2
Line 3
Line 4
Line 5
Line 6
Line 7
Line 8
Line 9
Line 10

Your script should output the tenth line, which is:
Line 10

Note:
1. If the file contains less than 10 lines, what should you output?
2. There at least three different solutions. Try to explore all possibilities.
'

# Solution 1
cnt=0
while read line && [ $cnt -le 10 ]; do
    let 'cnt = cnt + 1'
    if [ $cnt -eq 10 ]; then
        echo $line
        break
    fi
done < lines.txt

# Solution 2
awk 'FNR == 10 {print }'  lines.txt
awk 'NR == 10' lines.txt

# Solution 4
sed -n 10p lines.txt

# Solution 5
tail -n+10 lines.txt|head -1
