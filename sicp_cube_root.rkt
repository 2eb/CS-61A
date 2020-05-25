#lang simply-scheme
#|
Newton's method for cube roots is based on the fact that if y is an approximation to the cube root of x, then a better approximation is given by the value
y_n+1 = ((x/(y_n)^2)+ 2*y_n)/3
Use this formula to implement a cube-root procedure analogous to the square-root procedure.
|#
(define (square num)
  (* num num))

(define (cubert-iter guess old-guess x)
  (if (good-enough? guess old-guess)
      guess
      (cubert-iter (improve guess x) guess x)))

(define (good-enough? guess old-guess)
  (<= (/ (abs (- guess old-guess)) guess) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cubert x)
  (cubert-iter 1.0 0 x))
(cubert 0.000000000001)
