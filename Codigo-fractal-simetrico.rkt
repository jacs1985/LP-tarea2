#lang racket

(require graphics/turtles)
 
(define (hoja n)
  (when (> n 1)
    ;; Distancia con que se dibuja la rama , el tallo de la hoja
    (draw (/ n 2))
    ;; Se desforma, se ve la simetria
    (tprompt (split* (turn 60) (turn -60))
             (hoja (/ n 2)))
    ;; Distancia de las hojas entre si
    (draw (/ n 2))
    ;; inclinación del fractal
    (turn 0)
    ;; lo divide y aqui surge la recursión
    (hoja (- n 1))))
 #|el 1º move controla el movimiento der(+) y izq(-), turn gira el
fractal (90,180,270 grados) y el 2º move controla el movimiento vertical |#
(turtles #t) (move 0) (turn 90) (move -300)
(hoja 35)    
(save-turtle-bitmap "arbolFractal.png" 'png)
