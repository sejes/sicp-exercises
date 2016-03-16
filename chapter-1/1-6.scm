;-------------------------------------------------------------------------------

; Exercise 1.6

; Alyssa P. Hacker doesn't see why if needs to be provided as a special form.
; "Why can't I just define it as an ordinary procedure in terms of cond?" she
; asks. Alyssa's friend Eva Lu Ator claims that this can indeed be done, and she
; defines a new version of if:

(define (new-if test then else)
  (cond (test then)
        (else else)))

; Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5)
5

(new-if (= 1 1) 0 5)
0

; Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

; What happends when Alyssa attempts to use this to compute ; square roots?
; Explain.

; new-if is flawed since functions evaluate their arguments first, whereas the
; entire point of if is to evaluate exactly one of the clauses. In the case of
; sqrt-iter, new-if will evaluate both clauses, and thus sqrt-iter always makes
; a recursive call to itself and never terminates.
