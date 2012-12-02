import Data.List
import Data.String.Utils (strip)

main :: IO ()
main = do
	n <- getLine
	let perms = unlines . map strip . lines . map repPun . unlines . map show $ permutations [1 .. read n]
	let factorial = show . fact $ read n
	writeFile "rs6_out.txt" (factorial ++ "\n" ++ perms)

fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact (n - 1)

repPun :: Char -> Char
repPun ',' = ' '
repPun ']' = ' '
repPun '[' = ' '
repPun x = x
