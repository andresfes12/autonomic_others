(numbers = [1 2 3 4 5 6 7 8])

(sum = 0)
(for num $numbers {
  (set sum (+ $sum $num))
})

(println $sum)

