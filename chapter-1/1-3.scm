;-------------------------------------------------------------------------------

; Exercise 1.3
; Define a procedure that takes three numbers and returns the sum of the squares
; of the larger two.

; At this point in the textbook we have not been shown nested definitions nor
; have we seen higher-order functions like map or apply which would make this
; solution cleaner.

(define (square s)
  (* s s))

; Sum Of Squares Of Larger Two
(define (sosolt x y z)
  (if (<= x y)
      (+ (square y)
         (if (<= x z)
             (square z)
             (square x)))
      (+ (square x)
         (if (<= y z)
             (square z)
             (square y)))))
