add :: (Int, Int) -> Int
add (x, y) = x + y

zeroto :: Int -> [Int]
zeroto n = [0..n]

add' :: Int -> (Int -> Int)
add' x y = x + y

-- 3.11-1
-- [Char]
-- (Char)
-- [(Bool, Char)]
-- ([Bool], [Char])
-- [[a] -> [a]]

-- 3.11-2
-- [a] -> a
second xs = head (tail xs)
-- (a, b) -> (b, a)
swap (x, y) = (y, x)
-- a -> b -> (a, b)
pair x y = (x, y)
-- Num a => a -> a
double x = x * 2
-- Eq a => [a] -> Bool
palindrome xs = reverse xs == xs
-- (a -> a) -> a -> a
twice f x = f (f x)
