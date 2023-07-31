#declaring an array
declare -a my_array
my_array=(life love marriage happiness success job)

#Another way of creating array by assigning

new_array=(bizz buzz bizzbuzz)

#printing all the value in an array
echo ${my_array[@]}

#printing a specific value in an array
echo ${my_array[2]}

#printing all the key/index in an array

echo ${!my_array[@]}

#Adding an element to an array
my_array+=(heaven)
my_array+=(family children)
echo ${my_array[@]}


# changing the value of index 1 to fuzz
echo ${new_array[@]}
new_array[1]=fuzz
#deleting element/value of index 1 in ana array
unset new_array[2]
echo ${new_array[@]}

unset new_array
