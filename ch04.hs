myIsDigit c = c <= '0' && c <= '9'

myEvent n = n `mod` 2 == 0

mySplitAt n xs = (take n xs, drop n xs)

myRecip n = 1 / n

myAbs n | n >= 0 = n
        | otherwise = -n

mySignum n | 0 < n = 1
           | n == 0 = 0
           | otherwise = -1

myFst (x, _) = x
mySnd (_, x) = x

myTest ['a', _, _] = True
myTest _ = False

myNull [] = True
myNull _ = False

myHead (x:_) = x
myTail (_:xs) = xs

myConst :: a -> (b -> a)
myConst x = \_ -> x

halve xs = (take n xs, drop n xs)
  where n = length xs `div` 2

safetail_a xs = if null xs then [] else tail xs

safetail_b xs | null xs = []
              | otherwise = tail xs

safetail_c [] = []
safetail_c (x:xs) = xs

(.+) True True = True
(.+) True False = True
(.+) False True = True
(.+) False False = False

(.^) x y = if x == True && y == True
             then True
             else False

(.^^) x y = if x == True
              then y
              else False

mult_test x y z = (\x y z -> x * y * z) x y z
