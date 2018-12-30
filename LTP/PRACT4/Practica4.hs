module Practica4 where

--Ejercicio1
decBin :: Int -> [Int]
decBin x = if x<2 then [x]
	   else (x`mod` 2) : decBin(x `div` 2)

--Ejercicio2
binDec :: [Int] -> Int
binDec(x:[]) = x
binDec(x:y) = x + binDec y * 2

--Ejercicio3
divisores :: Int -> [Int]
divisores x = divisoresAux x 1

divisoresAux :: Int -> Int -> [Int]
divisoresAux num contador
	|num == contador = [contador]
	|num`mod`contador == 0 = [contador] ++ (divisoresAux num (contador + 1))
	|num`mod`contador /= 0 = (divisoresAux num (contador+1))

--Listas intensionales
divisoresint :: Int -> Int
divisoresint x = length[y| y <- [1..x], mod x y == 0]

--Ejercicio4
member :: Int -> [Int] -> Bool
member _ [] = False
member n (x:xs)
	|n == x = True
	|otherwise = member n xs

--Ejercicio5
esPrimo :: Int -> Bool
esPrimo x = length(divisores x) == 2

primos :: Int -> [Int]
primos x = take x (primosAux 1 x)

primosAux :: Int -> Int -> [Int]
primosAux y x
	|esPrimo y = [y] ++ (primosAux(y+1) x)
	|otherwise = primosAux (y+1) x

--Ejercicio6
repeated :: Int -> [Int] -> Int
repeated x xs = length(filter(==x) xs)

--Ejercicio7
concatena :: [[a]] -> [a]
concatena [] = []
concatena (x:ys) = x ++ concatena ys

--Ejercicio8
selectEven :: [Int] -> [Int]
selectEven xs = filter (even) xs

--Ejercicio9
selectEvenPos :: [Int] -> [Int]
selectEvenPos (x:xs) = auxEvenPos (x:xs) 0

auxEvenPos :: [Int] -> Int -> [Int]
auxEvenPos []_ = []
auxEvenPos(x:xs) par
	|par`mod` 2 == 0 = [x] ++ (auxEvenPos xs (par+1))
	|otherwise = auxEvenPos xs (par+1)

--Ejercicio10
iSort :: [Int] -> [Int]
iSort x[] = [x]
iSort(x:xs) = ins x (iSort xs)

ins :: Int -> [Int] -> [Int]
ins x [] = [x]
ins x (y:ys)
	|x<y = (x:y:ys)
	|otherwise = [y]++ ins x ys

--Ejercicio11
doubleAll :: [Int] -> [Int]
doubleAll x = map (*2) x

--Ejercicio12
mapea :: (a -> b) -> [a] -> [b]
mapea p (x:xs) = [p x | x <- xs]

filtro :: (a-> Bool) -> [a] -> [b]
filtro p xs = [x | x <- xs, p x]

--Ejericio14
type Person = String
type Book = String
type Database = [(Person,Book)]

exampleBase :: Database
exampleBase = [("Alicia", "El nombre de la rosa"),("Juan","La hija del canibal"),
	("Pepe","Odisea"),("Alicia","La ciudad de las bestias")]
	
obtain :: Database -> Person -> [Book]
obtain dBase thisPerson = [book | (person, book) <- dBase, person == thisPerson]

borrow :: Database -> Book -> Person -> Database
borrow dBase book person = dBase ++ [(book, person)]

retornar :: Database -> (Person, Book) -> Database
retornar dBase(person,book) 
	= [(persona, books) | (persona, books) <- dBase, (person, book) /= (persona, books)]
	
--Ejercicio15
data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show
numleaves :: Tree a -> Int
numleaves (Leaf x) = 1
numleaves (Branch a b) = numleaves a + numleaves bestias


--Ejercicio16
symmetric :: Tree a -> Tree a
symmetric (Leaf b) = (Leaf b)
symmetric (Branch a b) = (Branch (symmetric b) (symmetric a))


--Ejercicio17
lisToTree :: [a] -> Tree a
lisToTree lista = Branch (lisToTree mitad1) (lisToTree mitad2)
	where longitud = length lista
		mitad = div longitud 2
		mitad1 = take mitad lista
		mitad2 = drop mitad lista
		
treeToList :: Tree a -> [a]
treeToList (Leaf x) = [x]
treeToList (Branch a b) = (treeToList a) ++ (treeToList b)


--Ejercicio18
insTree :: Int -> BinTreeInt -> BinTreeInt
insTree i Void = Node i Void Void
insTree i (Node a b c)
	| i <= a = Node a (insTree i b) c
	|otherwise = Node a b (insTree i c)
	
--Ejercicio19
creaTree :: [Int] -> BinTreeInt
creaTree [] = Void
creaTree (x:xs) = insTree x (creaTree xs)

--Ejercicio20
treeElem :: Int -> BinTreeInt -> Bool
treeElem x Void = False
treeElem x (Node a b c)
	|x==a = True
	|otherwise = or [treeElem x b, treeElem x c]
	
data BinTreeInt = Void | Node Int BinTreeInt BinTreeInt deriving Show

--Ejericicio21
dupElem :: BinTreeInt -> BinTreeInt
dupElem Void=Void
dupElem (Node a b c) = (Node (2*a) (dupElem b) (dupElem c))

data Tree2 a  = Branch2 a (Tree2 a) (Tree2 a) | Void2 deriving Show


--Ejercicio22
countProperty :: (a -> Bool) -> (Tree2 a) -> Int
countProperty f Void2 = 0
countProperty f (Branc a b c)
	|f a == True = 1+(countProperty f b) + (countProperty f c)
	|f a == False = (countProperty f b) + (countProperty f c)

