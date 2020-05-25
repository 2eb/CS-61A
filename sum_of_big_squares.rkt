#lang simply-scheme
(define (square x) (* x x))
(define (sum-of-big-square a b c) 
  (+ (square (if (> a b) a b))
  (square (if (> (if (< a b) a b) c) (if (< a b) a b) c))))
(sum-of-big-square 3 3 2)