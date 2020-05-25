#lang simply-scheme
#|
Write a procedure switch that takes a sentence as its argument and returns a sentence
in which every instance of the words I or me is replaced by you, while every instance of
you is replaced by me except at the beginning of the sentence, where it’s replaced by I.
(Don’t worry about capitalization of letters.) Example:
> (switch ’(You told me that I should wake you up))
(i told you that you should wake me up)

|#
(define (switch-iter sentence-to-switch)
  (cond ((empty? sentence-to-switch) '())
        ((member? (first sentence-to-switch) '(I me)) (sentence 'you (switch-iter (bf sentence-to-switch))))
        ((equal? (first sentence-to-switch) 'you) (sentence 'me (switch-iter (bf sentence-to-switch))))
        (else (sentence (first sentence-to-switch) (switch-iter (bf sentence-to-switch))))))
(define (switch sts)
  (if (equal? (first sts) 'you)
      (sentence 'I (switch-iter (bf sts)))
      (switch-iter sts)))
(switch '(you told me that I should wake you up))