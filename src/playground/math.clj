(ns playground.math)

(defn solo-pares [nums]
  (filter even? nums))

(println "solo-pares =>" (solo-pares [1 2 3 4 5 6 7 8]))
