main :: IO ()
main = do
	s <- readFile "rosalind_rna.txt"
	writeFile "RS2_OUT.txt" (map subT s)

subT :: Char -> Char
subT 'T' = 'U'
subT c = c