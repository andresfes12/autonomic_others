(defn compare-vectors [vector1 vector2]
  (for [i (range 1 (inc (length vector1)))]
    (let [min-value (min (vector1 i) (vector2 i))]
      (print min-value))))


(def vector1 [3 9 2 5])
(def vector2 [6 4 8 1])

(compare-vectors vector1 vector2)
