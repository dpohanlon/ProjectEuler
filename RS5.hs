main :: IO ()
main = do
	f <- readFile "rs5.txt"
	let l = lines f
	print $ hDist (l !! 0) (l !! 1)

hDist :: String -> String -> Integer
hDist s1 s2 = foldl (+) 0 $ zipWith (isSame) s1 s2

isSame :: Char -> Char -> Integer
isSame x y
	| x == y = 0
	| otherwise = 1