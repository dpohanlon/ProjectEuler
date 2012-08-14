import Data.List

main = print(sieve 1000)

sieve :: Integer -> [Integer]
sieve input = 
	let m = input
	in sieve' m m [2,3..m]

sieve' :: Integer -> Integer -> [Integer] -> [Integer]
sieve' x m list
	| x == 1 = list
	| x > 1 = sieve' (x - 1) m (list \\ [2*x, 3*x .. m])

factors :: Integer -> [Integer]
factors n = 
	let primes = sieve (floor (sqrt (fromIntegral n)))
	in takeWhile(\x -> n `mod` x == 0) primes
 
