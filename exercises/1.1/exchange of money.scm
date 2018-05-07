#(define (count-change amount)
  (cc amount 5))

(define (cc amount kind-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kind-of-coins 0)) 0)
        (else (+ (cc amount
                     (- kind-of-coins 1))
                 (cc (- amount
                        (first-denomi))) ))))
