#lang sicp


(define (gsum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (gsum term (next a) next b))))

(define (sum a b) (gsum identity a inc b))

(define (sum-of-square a b)
  (gsum (lambda (x) (* x x))
        a
        inc
        b))

(define (pi-sum a b)
  (gsum (lambda (x) (/ 1 (* x (+ x 2))))
        a
        (lambda (x) (+ x 4))
        b))