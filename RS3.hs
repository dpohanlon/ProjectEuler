main :: IO ()
main = do
	s <- readFile "rs3.txt"
	writeFile "rs3_out.txt" (reverse (map comp s))

comp :: Char -> Char
comp 'A' = 'T'
comp 'C' = 'G'
comp 'T' = 'A'
comp 'G' = 'C'
comp c = c