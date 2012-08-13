main = print (sum [ x 
	| x <- takeWhile(\x -> x < 4000000)(map fib [0 ..]) ++ [], even x ])

fib :: Integer -> Integer
fib n
	| n == 0 = 0
	| n == 1 = 1
	| otherwise = (fib (n - 1)) + (fib (n - 2))