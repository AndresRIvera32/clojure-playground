(ns playground.algorithms)

;; ---------- Palindrome ----------
(defn palindromo? [s]
  (= s (apply str (reverse s))))

(println "palindromo? ana =>" (palindromo? "ana"))
(println "palindromo? hola =>" (palindromo? "hola"))
(println "palindromo? recognize =>" (palindromo? "recognize"))

;; ---------- Fibonacci ----------
(defn fibonacci [n]
  (take n (map first (iterate (fn [[a b]] [b (+ a b)]) [0 1]))))

(println "fibonacci 10 =>" (fibonacci 10))

;; ---------- characters frequency ----------
(defn frecuencias-str [s]
  (frequencies s))

(println "frecuencias banana =>" (frecuencias-str "banana"))

;; ---------- filter pairs ----------
(defn solo-pares [nums]
  (filter even? nums))

(println "solo-pares =>" (solo-pares [1 2 3 4 5 6 7 8]))
;-- ---------- factorial ----------
(defn factorial [n]
  (println (reduce * (range 1 (inc n)))) )
