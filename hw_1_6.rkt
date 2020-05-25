#lang simply-scheme
#|
Most versions of Lisp provide and and or procedures like the ones on page 19. In
principle there is no reason why these can’t be ordinary procedures, but some versions of
Lisp make them special forms. Suppose, for example, we evaluate
(or (= x 0) (= y 0) (= z 0))
If or is an ordinary procedure, all three argument expressions will be evaluated before or
is invoked. But if the variable x has the value 0, we know that the entire expression has
to be true regardless of the values of y and z. A Lisp interpreter in which or is a special
form can evaluate the arguments one by one until either a true one is found or it runs out
of arguments.
Your mission is to devise a test that will tell you whether Scheme’s and and or are special
forms or ordinary functions
|#
(define (test-or x y z)
  (or (= x 0) (= (/ y z) 0) (= z 0)))
(define (test-and x y z)
  (and (= x 0) (= (/ y z) 0) (= z 0)))
(test-or 0 1 0)
(test-and 1 1 0)
#|
Why might it be advantageous for an interpreter to treat or as a special form and evaluate
its arguments one at a time? Can you think of reasons why it might be advantageous to
treat or as an ordinary function?
-Efficiency. Calculations are faster if you don't have to evalute all the arguments into the or operation
-Because in above case we have an invalid argument or may have an argument that causes infinite recursion.
in this case x argument happen to have a valid argument to complete the operation but other cases where x !=0 in test-or
calculation fails.
|#
