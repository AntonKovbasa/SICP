(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
    
(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x (square guess))))

(define (average x y)
  (/ (+ (* 2 x) y) 3))

(define (cube x) (* x x x))

(define (square x) (* x x))

(define (abs x)
  (if (< x 0) 
      (- x)
      x))
    
    
(sqrt 8)
    
    