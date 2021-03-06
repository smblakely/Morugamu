#lang racket

(provide render)

(require "./card-designs.rkt"
         "./rules.rkt"
         2htdp/image)

;Basic symbols

(define (icon s)
  (text s 50 "black"))

(define (render theme)


  (define-tile < '<
    (text "<" 50 "black"))


  (define-tile max 'max
    #;(bitmap "./themes/emojis/add.png")
    (text "max" 50 "black"))

  
  (list
   (symbol-page)



   (rule-card (rule '(< x x) 'F)
           
              (rule '(< x 9) 'T)
              (rule '(< 9 x) 'F)
           
              (rule '(< x 8) 'T)
              (rule '(< 8 x) 'F)

              (rule '(< x 7) 'T)
              (rule '(< 7 x) 'F)

              (rule '(< x 6) 'T)
              (rule '(< 6 x) 'F)

              (rule '(< x 5) 'T))

   (rule-card (rule '(< 5 x) 'F)

              (rule '(< x 4) 'T)
              (rule '(< 4 x) 'F)

              (rule '(< x 3) 'T)
              (rule '(< 3 x) 'F)

              (rule '(< x 2) 'T)
              (rule '(< 2 x) 'F)

              (rule '(< x 1) 'T)
              (rule '(< 1 x) 'F)

              (rule '(< 0 0) 'F))




   (rule-card (rule '(max x y)
                    '(if (< x y)
                         y
                         x)))))





