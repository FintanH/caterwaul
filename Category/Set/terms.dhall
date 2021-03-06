{- These are various operations, grouped by type, specialized to **Set**.
-}
    let Set = ./../../Function/Type

in  { either =
        ./../../Either/terms.dhall
    , functor =
        ./../../Functor/Endo/terms.dhall Type Set
    , monad =
        ./../../Monad/terms.dhall Type Set ./../../Function/semigroupoid
    }
