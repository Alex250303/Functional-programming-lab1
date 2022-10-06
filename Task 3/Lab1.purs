module Lab1 where
 
import Prelude

import Data.List (List(..), (:))
import Effect (Effect)
import Effect.Console (log)
import Data.Foldable(foldr, foldl)

singleton :: forall a. a -> List a
singleton a = a : Nil

null :: forall a. List a -> Boolean
null Nil = true
null _ = false

snoc :: forall a. List a -> a -> List a
snoc xs x = foldr (:) (x : Nil) xs

length :: forall a. List a -> Int
length = foldl (\l _ -> l + 1) 0

test::Effect Unit
test = do
  log $ show $ singleton 5
  log $ show $ null $ (5 : 23 : 56 : 47 : Nil)
  log $ show $ snoc (5 : 23 : 56 : 47 : Nil) 963
  log $ show $ length (5 : 23 : 56 : 47 : 963 : Nil)
