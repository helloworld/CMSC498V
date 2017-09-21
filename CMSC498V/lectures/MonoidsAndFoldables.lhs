Monoids & Foldables 
===========

This lecture is stolen from [Learn you a Haskell for Great Good!](http://learnyouahaskell.com/functors-applicative-functors-and-monoids).

Haskell's combination of purity, higher order functions, parameterized algebraic data types, and typeclasses allows us to implement *polymorphism* on a much higher level than possible in other languages. 
We don't have to think about types belonging to a big hierarchy of types. Instead, we think about what the types can act like and then connect them with the appropriate typeclasses. 
An `Int` can act like a lot of things. It can act like an equatable thing, like an ordered thing, like an enumerable thing, etc.

Typeclasses are *open*, which means that we can define our own data type, think about what it can act like and connect it with the typeclasses that define its behaviors. 
Because of that and because of Haskell's great type system that allows us to know a lot about a function just by knowing its type declaration, we can define typeclasses that define behavior that's very general and abstract
(using terminology from the scary [Category Theory](https://en.wikipedia.org/wiki/Category_theory) ). 
We've met typeclasses that define operations for seeing if two things are equal or comparing two things by some ordering. Those are very abstract and elegant behaviors, but we just don't think of them as anything very special because we've been dealing with them for most of our lives. We recently met functors, which are basically things that can be mapped over. That's an example of a useful and yet still pretty abstract property that typeclasses can describe. In this chapter, we'll take a closer look at functors, along with slightly stronger and more useful versions of functors called applicative functors. We'll also take a look at monoids, which are sort of like socks.

\begin{code}
module MonoidsAndFoldables where
\end{code}
