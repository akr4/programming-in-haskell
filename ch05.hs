myConcat xss = [x|xs <- xss, x <- xs]
-- scala: def concat[A](xss: Traversable[Traversable[A]]) = for (xs <- xss; x <- xs) yield x

myFirsts ps = [x|(x,_) <- ps]
-- Scala: def firsts[A, B](ps: Traversable[Pair[A, B]]) = for ((x, _) <- ps) yield x

myLength xs = sum [1|_ <- xs]
-- scala: def length[A](xs: Traversable[A]) = (for (_ <- xs) yield 1).sum

factors n = [x| x <- [1..n], n `mod` x == 0]
-- scala: def factors(n: Int) = for (x <- 1 to n if n % x == 0) yield x

prime n = factors n == [1, n]
-- scala: def prime(n: Int) = factors(n) == Seq(1, n)

primes n = [x | x <- [2..n], prime x]
-- scala: def primes(n: Int) = for (x <- 2 to n if (prime(x))) yield x

find k t = [v | (k', v) <- t, k == k']
-- scala: def find[A, B](k: A, t: Traversable[Pair[A, B]]) = for ((k2, v) <- t if k == k2) yield v

pairs xs = zip xs (tail xs)
-- scala: def pairs[A](xs: Iterable[A]) = xs.zip(xs.tail)

sorted xs = and [x <= y | (x, y) <- pairs xs]
