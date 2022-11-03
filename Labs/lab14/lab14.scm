(define (split-at lst n)
  (cond ((null? (cdr lst)) (cons lst nil))
        ((= n 0) (cons nil lst))
        ((> n (length lst)) (cons lst nil))
        (else (cons (cons (car lst)
                          (car (split-at (cdr lst) (- n 1))))
                    (cdr (split-at (cdr lst) (- n 1))))))
)


(define (compose-all funcs)
  (cond ((null? funcs) (lambda (x) x))
        (else (lambda (x) ((compose-all (cdr funcs)) ((car funcs) x)))))
)

