import Data.Map
import Data.Char

main :: IO ()
main = do
	s <- readFile "RS1.txt"
	print $ occM s

occM :: String -> Map Char Integer
occM s = fromListWith (+) [(c, 1) | c <- s, isAlpha c]