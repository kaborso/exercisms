(ns bob)
;; (load-file "bob.clj")
(def response-for
  [text]
  (cond
    (allcaps? text) "Woah, chill out!"
    (question? text) "Sure."
    (statement? text) "Whatever."
    (silence? text) "Fine, be that way."))

