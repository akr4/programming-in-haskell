double x = x + x
quadruple x = double (double x)

factorial n = product [1..n]
average ns = sum ns `div` length ns

-- 2.6-3
n = a `div` length xs
  where
    a = 10
    xs = [1,2,3,4,5]

-- 2.6.-4
myLast1 xs = head(reverse xs)
myLast2 xs = xs !! (length xs - 1)

-- 2.6-5
myInit1 xs = reverse(tail(reverse xs))
myInit2 (x:[]) = []
myInit2 (x:xs) = [x] ++ myInit2 xs
