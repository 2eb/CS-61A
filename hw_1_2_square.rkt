#lang simply-scheme

(define (square x)
  (* x x))
(define (squares numbers)
  (if (empty? numbers)
      '()
      (sentence (square (first numbers)) (squares (bf numbers)))))
(squares '(1 2 3))