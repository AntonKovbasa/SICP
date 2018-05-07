(define (square x) (* x x))

(define (sum-of-squares a b) 
  (+ (square a) (square b)))

(define (sum-of-squares-of-two-biggest a b c)
  (cond ((and (<= a b) (<= a c)) (sum-of-squares b c))
        ((<= b c) (sum-of-squares a c))
        (else sum-of-squares a b)))
      
      
(sum-of-squares-of-two-biggest 1 2 3)