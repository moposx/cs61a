(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cdr (cdr s)))
)


(define (sign num)
  (cond ((< num 0) -1)
        ((= num 0) 0)
        ((> num 0) 1))
)


(define (square x) (* x x))

(define (pow x y)
  (cond ((= x 0) 0)
        ((= y 0) 1)
        ((= (square x) 1) 1)
        ((odd? y) (* x (square (pow x (/ (- y 1) 2)))))
        ((even? y) (square (pow x (/ y 2)))))
)
