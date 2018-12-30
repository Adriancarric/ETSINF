module Ejercicio1 where

	import Circle
	import Triangle
	
	main = do
		putStrLn ("El area del circulo es " ++ show(areaCircle 2))
		putStrLn ("El area del triangulo es " ++ show(areaTrinangle 4 5))
