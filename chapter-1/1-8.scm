;-------------------------------------------------------------------------------

; Exercise 1.8

; Newton's method for cube roots is based on the fact that if y is an
; approximation to the cube root of x, then a better approximation is given by
; the value

; (x/y^2 + 2y)/3

; Use this formula to implement a cube-root procedure analogous to the square--
; root procedure. (In section 1.3.4 we will see how to implement Newton's method
; in general as an abstraction of these square-root and cube-root procedures.

(define tolerance 0.00001)

(define (square x)
  (* x x))

(define (cube-root x)
  (define (iter guess)
    (let ((new-guess (improve guess)))
      (if (close-enough? guess new-guess)
          new-guess
          (iter new-guess))))
  (define (improve guess)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (define (close-enough? guess new-guess)
    (< (abs (- guess new-guess)) tolerance))
  (if (zero? x) ; We don't need Newton's method to find sqrt(0)
      0
      (iter 1.0)))
