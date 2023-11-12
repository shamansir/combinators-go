module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)

main :: Effect Unit
main = do
  log "🍝"


-- starling
sCombinator :: forall a b c. (a -> (b -> c)) -> ((a -> b) -> (a -> c))
sCombinator = \x -> \y -> \z -> (x z) (y z)


-- kestrel
kCombinator :: forall a b. a -> (b -> a)
kCombinator = \x -> \y -> x


-- identity // idiot
iCombinator :: forall a. a -> a
iCombinator = \x -> x


-- bluebird
bCombinator :: forall a b c. (b -> c) -> (a -> b) -> (a -> c)
bCombinator = \x -> \y -> \z -> x (y z)


-- blackbird
b1Combinator ∷ forall a b c d. (c -> d) -> (a -> b -> c) -> (a -> b -> d)
b1Combinator = \x -> \y -> \z -> \u -> x (y z u)


-- bunting
b2Combinator :: forall a b c d e. (d -> e) -> (a -> b -> c -> d) -> (a -> b -> c -> e)
b2Combinator = \x -> \y -> \z -> \u -> \v -> x (y z u v)


-- becard
b3Combinator :: forall a b c d. (c -> d) -> (b -> c) -> ((a -> b) -> (a -> d))
b3Combinator = \x -> \y -> \z -> \u -> x (y (z u))


-- cardinal
cCombinator :: forall a b c. (a -> (b -> c)) -> (b -> (a -> c))
cCombinator = \x -> \y -> \z -> (x z) y


-- dove
dCombinator :: forall a b c d. (a -> c -> d) -> (a -> (b -> c) -> b -> d)
dCombinator = \x -> \y -> \z -> \u -> (x y) (z u)


-- dickcissel
d1Combinator :: forall a b c d e. (a -> b -> d -> e) -> (a -> b -> (c -> d) -> c -> e)
d1Combinator = \x -> \y -> \z -> \u -> \v -> (x y z) (u v)


-- dovekies
d2Combinator :: forall a b c d e. (c -> d -> e) -> ((a -> c) -> a -> (b -> d) -> b -> e)
d2Combinator = \x -> \y -> \z -> \u -> \v -> (x (y z)) (u v)
