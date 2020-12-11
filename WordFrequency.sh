: '
Write a bash script to calculate the frequency of each word in a 
text file words.txt.

For simplicity sake, you may assume:
1. words.txt contains only lowercase characters and space ' ' characters.
2. Each word must consist of lowercase characters only.
3. Words are separated by one or more whitespace characters.

Example:

Assume that words.txt has the following content:
the day is sunny the the
the sunny is is

Your script should output the following, sorted by descending frequency:
the 4
is 3
sunny 2
day 1
Note:

Dont worry about handling ties, it is guaranteed that each words frequency count is unique.
Could you write it in one-line using Unix pipes?
'

# Solution 1
cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -r | awk '{ print $2, $1 }'

: '
tr -s: truncate the string with target string, but only remaining one instance (e.g. multiple whitespaces)

sort: To make the same string successive so that uniq could count the same string fully and correctly.

uniq -c: uniq is used to filter out the repeated lines which are successive, -c means counting

sort -r: -r means sorting in descending order

awk '{ print $2, $1 }': To format the output, see here.
'


# Solution 2
awk '{ for (i=1; i<=NF; i++) { ++D[$i]; } } END { for (i in D) { print i, D[i] } }' words.txt | sort -nr -k 2
