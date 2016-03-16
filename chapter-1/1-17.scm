;-------------------------------------------------------------------------------

; Exercise 1.17

; The exponentiation algorithms in this section are based on performing
; exponentiation by means of repeated multiplication. In a similar way, one can
; perform integer multiplication by means of repeated addition. The following
; multiplication procedure (in which it is assumed that our language can only
; add, not multiply) is analogous to the expt procedure:

(define (new-* a b)
  (if (= b 0)
      0
      (+ a (new-* a (- b 1)))))

; This algorihm takes a number of steps that is linear inb. Now suppose we
; include, together with addition, operations double, which doubles an integer,
; and halve, which divides an (even) integer by 2. Using these, design a
; multiplication procedure analogous to fast-expr that uses a logarithmic number
; of steps.

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (mult-rec a b)
  (define (* a b)
    (cond ((= a 1) b)
          ((even? a) (* (halve a) (double b)))
          (else (+ b (* (1- a) b)))))
  (if (<= a b) ; Since we're always making the left argument smaller, let's make
      (* a b)  ; it start off smaller.
      (* b a)))
