# first 20 lines
head -20

# first 20 character
head -c 20

# Display the lines (from line number 12 to 22, both inclusive) for the input file.
head -22 | tail -11

#last 20 lines
tail -20

#last 20 character
tail -c 20

# Output the text with all parentheses   replaced with box brackets  .
cat tr.txt | tr "()" "[]" > tr.txt_output

# delete all lower case
tr -d "a-z"

# Replace all sequences of multiple spaces with just one space.
tr -s ' '
