(def arreglo1 [5 2 7 1])
(def arreglo2 [3 6 4 9])

(doseq [[elem1 elem2] (map vector arreglo1 arreglo2)]
  (println (min elem1 elem2)))
