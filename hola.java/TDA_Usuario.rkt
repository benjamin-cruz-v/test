#lang racket

(provide (all-defined-out))
;usuario
;constructor
(define (Usuario nombre pass)
  (list nombre pass))

;Pertenencia
(define (Usuario? lista)
   (if (null? lista)
       #f
  (if (and (string? (car lista)) (number? (cadr lista)))
              
        #t
        #f)))

;Selectores
(define (getnombre Usuario) (car Usuario))
(define (getpass Usuario) (cadr Usuario))