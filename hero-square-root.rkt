#lang sicp

(define (sqrt x)
  (define tolerance 0.00001)
  (define (good-enuf? y)
    (< (abs (- (* y y) x)) tolerance))
  (define (average x y)
    (/ (+ x y) 2))
  (define (improve y)
    (average y (/ x y)))
  (define (try y)
    (if (good-enuf? y)
        y
        (try (improve y))))
  (try 1))

(define (sqrt1 a) (exact->inexact (sqrt a)))