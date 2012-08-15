import Text.Show

main = print (maximum (map multi [100..999]))

ispalindrome :: Integer -> Bool
ispalindrome n
	| strn == reverse strn = True
	| otherwise = False
	where
		strn = show n

multi :: Integer -> Integer
multi n
	| plist == [] = 0
	| otherwise = maximum plist
	where
		plist = [ x*n | x <- [100..999], ispalindrome (x*n) == True]