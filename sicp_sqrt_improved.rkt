#lang simply-scheme
#|
An alternative strategy for implementing good-enough? is to watch how guess changes
from one iteration to the next and to stop when the change is a very small fraction of the guess.
Design a square-root procedure that uses this kind of end test. Does this work better for small and large numbers?
|#
(define (square num)
  (* num num))

(define (sqrt-iter guess old-guess x)
  (if (good-enough? guess old-guess)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (good-enough? guess old-guess)
  (<= (/ (abs (- guess old-guess)) guess) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 0 x))
(sqrt 0.000001)
