#lang racket
        
         (require graphics/turtles)
         
         (define (hoja n)
         (when (> n 1)
           (draw (/ n 2))
           (tprompt (split* (turn 60) (turn -60))
                    (hoja (/ n 2)))
          (draw (/ n 2))
          (turn 5)
          (hoja (- n 1))))
        
         (turtles #t) (move 100) (turn 90) (move -90)
         (hoja 35)    
         (save-turtle-bitmap "arbolFractal.png" 'png)
