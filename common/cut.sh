###
https://www.hackerrank.com/challenges/text-processing-cut-4/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
###

# Sample Input

# Hello
# World
# how are you

# Sample Output

# Hell
# Worl
# how 

cut -c-4

#######################################################
###
https://www.hackerrank.com/challenges/text-processing-cut-5/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
###

Cut first 3 column 

# Sample input 
A B C D
A B C D

# sample output
A B C
A B C

cut -f -3

# Cut #6 
#print from 13th character to the end
cut -c 13- 

# Cut #7
# Given a sentence, identify and display its fourth word. Assume that the space (' ') is the only delimiter between words.
cut -d " " -f 4

# Cut #8
cut -d " " -f -3

# Cut #9
cut -f 2-
