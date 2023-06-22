array1 = [10, 20, 30]
array2 = [5, 15, 25]

if array1.size != array2.size
  puts "Las matrices no tienen la misma longitud"
  exit(1)
end

length = array1.size
(0...length).each do |i|
  sum = array1[i] + array2[i]
  puts "Suma en la posición #{i}: #{sum}"
end
