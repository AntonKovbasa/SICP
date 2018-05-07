(+  (* 3 
      (+  (* 2 4)
          (+ 3 5)))
    (+  (- 10 7)
        6))


(define pi 3.14159)
(define radius 10)
(* pi 
   (* radius radius))
(define cincumference (* 2 pi radius))
cincumference


(define (square x) (* x x))
(square (+ 5 1))


(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 3 4)


(define (abs1 x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))


(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))


(define (abs3 x)
  (if (< x 0)
      (- x)
      x))

(define (x<a<y x a y)
  (and (> a x) (< a y)))
(x<a<y 4 5 6)


(define (>and= x y)
  (or (> x y) (= x y)))
(>and= 10 4)



