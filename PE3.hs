import Data.List

main = 
	let m = 1000 
	in print (length(sieve m m [2,3..m]))

sieve :: Integer -> Integer -> [Integer] -> [Integer]
sieve x m list
	| x == 1 = list
	| x > 1 = sieve (x - 1) m (list \\ [2*x, 3*x .. m])
