;-------------------------------------------------------------------------------

; Exercise 1.11

; A function f is defined by the rule that f(n) = n if n < 3 and f(n) = f(n - 1)
; + 2f(n - 2) + 3f(n - 3) if n >= 3. Write a procedure that computes f by means
; of a recursive. Write a procedure that computes f by means of an iterative
; process.

; recursively
(define (f n)
  (if (<= 0 n 2)
      n
      (+ (* 1 (f (- n 1))) ; Redundant but looks nice :)
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

; iteratively
(define (f n)
  (define (f a b c n)
    (if (zero? n)
        a
        (f b c (+ (* 3 a) (* 2 b) c) (1- n))))
  (f 0 1 2 n))
