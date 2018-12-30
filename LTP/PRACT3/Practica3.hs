module Practica3 where
import Data.Char
nextchar :: Char -> Char
nextchar c = chr ((ord c) + 1)

fact :: Int-> Int
fact 0 = 1
fact n = n * fact(n-1)

--Ejercicio1
numCbetw2 :: Char -> Char -> Int
numCbetw2 x y = abs(((ord b)-(ord a)))-1

--Ejercicio2
sumatorio :: Int -> Int -> Int
sumatorio ini fin
	|ini==fin = ini
	|otherwise = ini + (sumatorio(ini+1) fin)

--Ejercicio3
max' :: (Ord a) => a -> a -> a
max' x y
	|x >= y = x
	|x < y = y

--Ejercicio4
leapyear :: Int -> Bool
leapyear x
	|x`mod`400==0 = True
	|x`mod`100==0 = False
	|x`mod`4==0 = True
	|otherwise = False

--Ejercicio5
dayamonth :: Int -> Int -> Int
dayamonth x y
	|x<8 && odd x = 31
	|x>=8 && even x = 31
	|x==2 = (if leapyear y then 29 else 28)
	|otherwise = 30

--Ejercicio6
remainder :: Int -> Int -> Int
remainder x y
	|x>y = (x-y) `remainder`y
	|x==y = 0
	|otherwise = x

--Ejercicio7
sumFacts :: Int -> Int
sumFacts x
	|x<=0 = 1
	|otherwise = fact x + sumFacts(x-1)


