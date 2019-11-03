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


#newton-method
(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good_enough? guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (sqrt-iter guess x)
  (if (good_enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))


(define (sqrt1 x)
  (sqrt-iter 1.0 x))

(sqrt1 9)



