array1: [5 10 3]
array2: [8 2 6]
array3: [1 9 4]
array4: [7 3 5]

find-middle: func [array] [
    sorted: sort copy array
    middle: pick sorted 2
    middle
]

print find-middle array1
print find-middle array2
print find-middle array3
print find-middle array4
