{-# LANGUAGE TemplateHaskell #-}
module Lib
    ( isPrime,
      isEven,
      isOdd,
      myTuple,
      evenList,
      oddList,
      primeList
    ) where

isPrime :: Int -> Bool
isPrime n = null [ x | x <- [2..isqrt n], n `mod`x  == 0]

isqrt 0 = 0
isqrt 1 = 1
isqrt n = head $ dropWhile (\x -> x*x > n) $ iterate (\x -> (x + n `div` x) `div` 2) (n `div` 2)

isEven :: Int -> Bool
isEven even = (even `mod` 2) == 0

isOdd :: Int -> Bool
isOdd odd = (odd `mod` 2) /= 0

myTuple = ("Hola", "Mundo", "Funcional")

evenList = [x | x <- [1..], isEven x]

oddList = [x | x <- [1..], isOdd x]

primeList = [x | x <- [1..], isPrime x]

-- Examples of list initialization

myRangeList = [1..20]
myList = [x | x<- [1..20]]

