array1 = [10, 20, 30]
array2 = [5, 15, 25]

length = array1.size
(0...length).each do |i|
  sum = array1[i] + array2[i]
  puts #{sum}
end
