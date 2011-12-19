mySum [] = 0
mySum (x:xs) = x + mySum xs

-- 1.7-1
double x = x * 2

-- 1.7-2
-- mySum x = x + mySum []
-- mySum x = x + 0

-- 1.7-3
myProduct [] = 1
myProduct (x:xs) = x * myProduct xs

-- 1.7-4
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
  where
    smaller = [a | a <- xs, a <= x]
    larger = [a | a <- xs, a > x]

