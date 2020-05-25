#lang simply-scheme
#|
Write a predicate ordered? that takes a sentence of numbers as its argument and
returns a true value if the numbers are in ascending order, or a false value otherwise.
|#
(define (ordered? numbers)
  (if (empty? (bf numbers))
      #t
      (if (> (first numbers) (first (bf numbers)))
          #f
          (ordered? (bf numbers)))))

(ordered? '(1 2 2 3 1))