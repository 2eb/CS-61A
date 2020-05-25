#lang simply-scheme
#|
The most common way is to use Newton's method of successive approximations,
which says that whenever we have a guess y for the value of the square root
of a number x, we can perform a simple manipulation to get a better guess
(one closer to the actual square root) by averaging y with x/y
|#
(define (square num)
  (* num num))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))
(sqrt 1000000000000)
