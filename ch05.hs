myConcat xss = [x|xs <- xss, x <- xs]
-- scala: def concat[A](xss: TraversableOnce[TraversableOnce[A]]) = for (xs <- xss; x <- xs) yield x

myFirsts ps = [x|(x,_) <- ps]
-- Scala: def firsts[A, B](ps: TraversableOnce[Pair[A, B]]) = for ((x, _) <- ps) yield x

myLength xs = sum [1|_ <- xs]
-- scala: def length[A](xs: TraversableOnce[A]) = (for (_ <- xs) yield 1).sum

