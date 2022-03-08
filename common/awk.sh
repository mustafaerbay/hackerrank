# Input:
# A 25 27 50
# B 35 37 75
# C 75 78 80
# D 99 88 76

# Output: 
# A : Fail
# B : Fail
# C : Pass
# D : Pass


awk '{
if ($2>50 && $3>50 && $4>50)
    print $1 " : Pass"
else
    print $1 " : Fail"
}'
