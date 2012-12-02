import Data.List

main = print(factors 10000)

sieve :: Integer -> [Integer]
sieve m = 
	sieve' m m [2,3 .. m]

sieve' :: Integer -> Integer -> [Integer] -> [Integer]
sieve' x m list
	| x == 1 = list
	| x > 1 = sieve' (x - 1) m (list \\ [2*x, 3*x .. m])

factors :: Integer -> [Integer]
factors n = 
	let primes = sieve (floor (sqrt (fromIntegral n)))
	in filter (\x-> n `mod` x == 0) primes
