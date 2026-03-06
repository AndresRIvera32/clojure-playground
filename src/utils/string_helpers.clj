(ns utils.string-helpers
  (:require [clojure.string :as str]))

(defn gritar [texto]
  (str/upper-case texto))