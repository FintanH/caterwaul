    let kArrow = ./../../Function/Kind

in  let kProduct = ./../../Tuple/Kind

in    λ(object : Kind)
    → λ(cat : ./../../Category/Monoidal/Kind kArrow kProduct object)
    →     let Set = ./../../Category/Set/monoidal/cartesian
      
      in  let Endofunctor = ./../../Functor/Endo/Type
      
      in  let Star = ./../../Star/Type object cat.arrow
      
      in  let Costar = ./../../Costar/Type object cat.arrow
      
      in  { Adjunction =
              ./../../Adjunction/Type object object cat.arrow cat.arrow
          , Arrow =
              ./../../Arrow/Type
          , Bifunctor =
              ./../../Functor/Bifunctor/Type
              object
              object
              object
              cat.arrow
              cat.arrow
              cat.arrow
          , Category =
              ./../../Category/Type object
          , Codensity =
              ./../../Codensity/Type object
          , CommutativeGroup =
              ./../../Group/Commutative/Type object cat
          , CommutativeMonoid =
              ./../../Monoid/Commutative/Type object cat
          , Comonad =
              ./../../Comonad/Type object cat.arrow
          , Compactable =
              ./../../Functor/Compactable/Type
          , Compose =
              ./../../Compose/Type object object object
          , Const =
              ./../../Const/Type object object
          , Costar =
              Costar
          , Coyoneda =
              ./../../Coyoneda/Type object cat.arrow
          , Day =
              ./../../Day/Type object cat
          , Density =
              ./../../Density/Type object
          , Either =
              ./../../Either/Type
          , Endofunctor =
              Endofunctor object cat.arrow
          , Eq =
              ./../../Eq/Type
          , Field =
              ./../../Field/Type object cat
          , Function =
              ./../../Function/Type
          , Group =
              ./../../Group/Type object cat
          , HomFunctor =
              ./../../Functor/Hom object cat.arrow
          , Identity =
              ./../../Identity/Type object
          , InternalHomFunctor =
              ./../../Functor/InternalHom object
          , Lan =
              ./../../Lan/Type object object cat.arrow
          , Leibniz =
              ./../../Leibniz/Type object object cat.arrow
          , Monad =
              ./../../Monad/Type object cat.arrow
          , Monoid =
              ./../../Monoid/Type object cat
          , MonoidalFunctor =
              ./../../Functor/Monoidal/Type object cat Set
          , NaturalTransformation =
              ./../../NaturalTransformation/Type object object cat.arrow
          , OrderedField =
              ./../../Field/Ordered/Type
          , OrderedGroup =
              ./../../Group/Ordered/Type
          , OrderedRing =
              ./../../Ring/Ordered/Type
          , PartiallyOrderedField =
              ./../../Field/PartiallyOrdered/Type
          , PartiallyOrderedGroup =
              ./../../Group/PartiallyOrdered/Type
          , PartiallyOrderedRing =
              ./../../Ring/PartiallyOrdered/Type
          , Profunctor =
              ./../../Functor/Profunctor/Type object object cat.arrow cat.arrow
          , Ran =
              ./../../Ran/Type object object cat.arrow
          , Rig =
              ./../../Rig/Type object cat
          , Ring =
              ./../../Ring/Type object cat
          , Semigroup =
              ./../../Semigroup/Type object cat.arrow cat.op
          , Semigroupoid =
              ./../../Semigroupoid/Type object
          , Semiring =
              ./../../Semiring/Type object cat
          , Star =
              Star
          , Strong =
              ./../../Strong/Type object object cat.arrow cat.arrow
          , Traversable =
              λ(m : kArrow object object) → Endofunctor object (Star m)
          , Tuple =
              ./../../Tuple/Type
          , Yoneda =
              ./../../Yoneda/Type object cat.arrow
          }
