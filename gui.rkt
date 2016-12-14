#lang racket

(require racket/gui/base)

( define bigframe ( new frame%
[ label "Temperature Converter "]
[ width 200] [ height 200]))

;(define text-field ( new text-field%
;[ label " Degree celsius "] [ parent myframe ]))

(define button (new button%
                    (parent bigframe)
                    [label "Convert F to C"]
                    
[ callback (λ (n k)
( send celsius set-value
(real->decimal-string
( cel_to_fah (string->number
( send fahrenheit get-value ))))))]))

( define fahrenheit ( new text-field%
( label " Fahrenheit")
( parent bigframe )))

( define celsius ( new text-field%
( label " Degrees")
( parent bigframe )))

(define cel_to_fah (λ(x) (/ (* (- x 32) 5) 9)))
                         

(send bigframe show #t)
