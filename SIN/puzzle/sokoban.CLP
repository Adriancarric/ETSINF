(defglobal ?*nod-gen* = 0)

;; ================================================================================


(defrule derecha
	(robot ?y ?x cajas $?c1 almacenes $?a1 nivel ?nivel)
	(grid ?gy ?gx)
	(test(< ?x ?gx))
																	;;Comprobar si choca 
	(not (obs ?y =(+ ?x 1)))
	(test (not(member$ (create$ c ?y (+ ?x 1)) $?c1)))            
	(test (not(member$ (create$ a ?y (+ ?x 1)) $?a1)))
																	;;Comprobar nivel
	(profundidad-maxima ?prof)
	(test (< ?nivel ?prof)) 
																	;; = -> Precalcula el valor antes de comprobarlo
	=>
	(assert (robot ?y (+ ?x 1) cajas $?c1 almacenes $?a1 nivel (+ ?nivel 1)))
	(bind ?*nod-gen* (+ ?*nod-gen* 1))
)

(defrule izquierda
	(robot ?y ?x cajas $?c1 almacenes $?a1 nivel ?nivel)
	(grid ?gy ?gx)
	(test(> ?x 1))
																	;;Comprobar si choca 
	(not (obs ?y =(- ?x 1)))
	(test (not(member$ (create$ c ?y (- ?x 1)) $?c1)))
	(test (not(member$ (create$ a ?y (- ?x 1)) $?a1)))
																	;;Comprobar nivel
	(profundidad-maxima ?prof)
	(test (< ?nivel ?prof))
	=>
	(assert (robot ?y (- ?x 1) cajas $?c1 almacenes $?a1 nivel (+ ?nivel 1)))
	(bind ?*nod-gen* (+ ?*nod-gen* 1))
)

(defrule arriba
	(robot ?y ?x cajas $?c1 almacenes $?a1 nivel ?nivel)
	(grid ?gy ?gx)
	(test (> ?y 1))
																	;;Comprobar si choca con algo
	(not (obs =(- ?y 1) ?x))
	(test (not(member$ (create$ c (- ?y 1) ?x) $?c1)))
	(test (not(member$ (create$ a (- ?y 1) ?x) $?a1)))
																	;;Comprobar nivel
	(profundidad-maxima ?prof)
	(test (< ?nivel ?prof))
	=>
	(assert (robot (- ?y 1) ?x cajas $?c1 almacenes $?a1 nivel (+ ?nivel 1)))
	(bind ?*nod-gen* (+ ?*nod-gen* 1))
)

(defrule abajo
	(robot ?y ?x cajas $?c1 almacenes $?a1 nivel ?nivel)
	(grid ?gy ?gx)
	(test (< ?y ?gy))
																	;;Comprobar si choca con algo
	(not (obs =(+ ?y 1) ?x))
	(test (not(member$ (create$ c (+ ?y 1) ?x) $?c1)))
	(test (not(member$ (create$ a (+ ?y 1) ?x) $?a1)))
																	;;Comprobar nivel
	(profundidad-maxima ?prof)
	(test (< ?nivel ?prof))
	=>
	(assert (robot (+ ?y 1) ?x cajas $?c1 almacenes $?a1 nivel (+ ?nivel 1)))
	(bind ?*nod-gen* (+ ?*nod-gen* 1))
)

;; =================================================================================
;; MOVER CAJA

(defrule empujarDerecha
	(robot ?y ?x cajas $?c1 c ?y =(+ ?x 1) $?c2 almacenes $?a1 nivel ?nivel)
	(grid ?gy ?gx)
	(test (< ?x (- ?gx 1)))
																	;;Comprobar si choca con algo
	(not (obs ?y =(+ ?x 2)))
	(test (not(or (member$ (create$ c ?y (+ ?x 2)) $?c1) (member$ (create$ c ?y (+ ?x 2)) $?c2))))
	(test (not(member$ (create$ a ?y (+ ?x 2)) $?a1)))
																	;;Comprobar nivel
	(profundidad-maxima ?prof)
	(test (< ?nivel ?prof))
	=>
	(assert (robot ?y (+ ?x 1) cajas $?c1 c ?y (+ ?x 2) $?c2 almacenes $?a1 nivel (+ ?nivel 1)))
	(bind ?*nod-gen* (+ ?*nod-gen* 1))
)

(defrule empujarIzquierda
	(robot ?y ?x cajas $?c1 c ?y =(- ?x 1) $?c2 almacenes $?a1 nivel ?nivel)
	(grid ?gy ?gx)
	(test (> ?x 2))
																	;;Comprobar si choca con algo
	(not (obs ?y =(- ?x 2)))
	(test (not(or (member$ (create$ c ?y (- ?x 2)) $?c1) (member$ (create$ c ?y (- ?x 2)) $?c2))))
	(test (not(member$ (create$ a ?y (- ?x 2)) $?a1)))
																	;;Comprobar nivel
	(profundidad-maxima ?prof)
	(test (< ?nivel ?prof))
	=>
	(assert (robot ?y (- ?x 1) cajas $?c1 c ?y (- ?x 2) $?c2 almacenes $?a1 nivel (+ ?nivel 1)))
	(bind ?*nod-gen* (+ ?*nod-gen* 1))
)

(defrule empujarArriba
	(robot ?y ?x cajas $?c1 c =(- ?y 1) ?x $?c2 almacenes $?a1 nivel ?nivel)
	(grid ?gy ?gx)
	(test (> ?y 2))
																	;;Comprobar si choca con algo
	(not (obs =(- ?y 2) ?x))
	(test (not(or (member$ (create$ c (- ?y 2) ?x) $?c1) (member$ (create$ c (- ?y 2) ?x) $?c2))))
	(test (not(member$ (create$ a (- ?y 2) ?x) $?a1)))
																	;;Comprobar nivel
	(profundidad-maxima ?prof)
	(test (< ?nivel ?prof))
	=>
	(assert (robot (- ?y 1) ?x cajas $?c1 c (- ?y 2) ?x $?c2 almacenes $?a1 nivel (+ ?nivel 1)))
	(bind ?*nod-gen* (+ ?*nod-gen* 1))
)

(defrule empujarAbajo
	(robot ?y ?x cajas $?c1 c =(+ ?y 1) ?x $?c2 almacenes $?a1 nivel ?nivel)
	(grid ?gy ?gx)
	(test (< ?y (- ?gy 1)))
																	;;Comprobar si choca con algo
	(not (obs =(+ ?y 2) ?x))
	(test (not(or (member$ (create$ c (+ ?y 2) ?x) $?c1) (member$ (create$ c (+ ?y 2) ?x) $?c2))))
	(test (not(member$ (create$ a (+ ?y 2) ?x) $?a1)))
																	;;Comprobar nivel
	(profundidad-maxima ?prof)
	(test (< ?nivel ?prof))
	=>
	(assert (robot (+ ?y 1) ?x cajas $?c1 c (+ ?y 2) ?x $?c2 almacenes $?a1 nivel (+ ?nivel 1)))
	(bind ?*nod-gen* (+ ?*nod-gen* 1))
)
;; =======================================================================================
;; METER CAJAS EN ALMACEN

(defrule MeterDerecha
	(robot ?y ?x cajas $?c1 c ?y =(+ ?x 1) $?c2 almacenes $?a1 a ?y =(+ ?x 2) 0 $?a2 nivel ?nivel)
																	;;Comprobar nivel
	(profundidad-maxima ?prof)
	(test (< ?nivel ?prof))
	=>
	(assert (robot ?y (+ ?x 1) cajas $?c1 $?c2 almacenes $?a1 a ?y (+ ?x 2) 1 $?a2 nivel (+ ?nivel 1)))
	(bind ?*nod-gen* (+ ?*nod-gen* 1))
)

(defrule MeterIzquierda
	(robot ?y ?x cajas $?c1 c ?y =(- ?x 1) $?c2 almacenes $?a1 a ?y =(- ?x 2) 0 $?a2 nivel ?nivel)
																	;;Comprobar nivel
	(profundidad-maxima ?prof)
	(test (< ?nivel ?prof))
	=>
	(assert (robot ?y (- ?x 1) cajas $?c1 $?c2 almacenes $?a1 a ?y (- ?x 2) 1 $?a2 nivel (+ ?nivel 1)))
	(bind ?*nod-gen* (+ ?*nod-gen* 1))
)

(defrule MeterAbajo
	(robot ?y ?x cajas $?c1 c =(+ ?y 1) ?x $?c2 almacenes $?a1 a =(+ ?y 2) ?x 0 $?a2 nivel ?nivel)
																	;;Comprobar nivel
	(profundidad-maxima ?prof)
	(test (< ?nivel ?prof))
	=>
	(assert (robot (+ ?y 1) ?x cajas $?c1 $?c2 almacenes $?a1 a (+ ?y 2) ?x 1 $?a2 nivel (+ ?nivel 1)))
	(bind ?*nod-gen* (+ ?*nod-gen* 1))
)

(defrule MeterArriba
	(robot ?y ?x cajas $?c1 c =(- ?y 1) ?x $?c2 almacenes $?a1 a =(- ?y 2) ?x 0 $?a2 nivel ?nivel)
																	;;Comprobar nivel
	(profundidad-maxima ?prof)
	(test (< ?nivel ?prof))
	=>
	(assert (robot (- ?y 1) ?x cajas $?c1 $?c2 almacenes $?a1 a (- ?y 2) ?x 1 $?a2 nivel (+ ?nivel 1)))
	(bind ?*nod-gen* (+ ?*nod-gen* 1))
)

;;========================================================================
;;REGLAS GENERALES

(defrule objetivo
    (declare (salience 100))
    ?f<- (robot ?y ?x cajas almacenes $?a1 nivel ?nivel)
    
   =>
    (printout t "SOLUCION ENCONTRADA EN EL NIVEL " ?nivel crlf)
    (printout t "NUMERO DE NODOS EXPANDIDOS O REGLAS DISPARADAS " ?*nod-gen* crlf)
    (printout t "HECHO OBJETIVO " ?f crlf)
    
    (halt)
 )

;;========================================================================
;;INICIO

(deffunction inicio ()
        (reset)
	(printout t "Profundidad Maxima:= " )
	(bind ?prof (read))
	(printout t "Tipo de Busqueda " crlf "    1.- Anchura" crlf "    2.- Profundidad" crlf )
	(bind ?a (read))
	(if (= ?a 1)
	       then    (set-strategy breadth)
	       else   (set-strategy depth))
        (printout t " Ejecuta run para poner en marcha el programa " crlf)
	(assert (profundidad-maxima ?prof))
	(assert (grid 5 8))
	(assert (obs 3 1))
	(assert (obs 1 4))
	(assert (obs 3 4))
	(assert (obs 4 4))
	(assert (obs 5 4))
	(assert (obs 3 5))
	(assert (obs 3 8))
	(assert (robot 4 1 cajas c 2 2 c 2 6 c 4 3 almacenes a 1 7 0 a 4 5 0 a 5 5 0 nivel 0))
)