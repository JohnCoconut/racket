#lang sicp

(define (fixed-point f start)
  (define tolerance 0.00001)
  (define (close-enuf? u v)
    (< (abs (- u v)) tolerance))
  (define (iter old new)
    (if (close-enuf? old new)
        new
        (iter new (f new))))
  (iter start (f start)))



(define (sqrt x)
  (fixed-point
   (lambda (y) (/ (+ y (/ x y)) 2))
   1))

(exact->inexact (sqrt 10))