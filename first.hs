doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmall x = if x > 100
  then x
  else doubleMe x

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1  

conanO'Brien = "It's a-me, Conan O'Brien!" 

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

nouns = ["hobo", "frog", "pope"]
adjs = ["lazy", "grouchy", "scheming"]

length' xs = sum [ 1 | _ <- xs ]

isUpper ch = elem ch ['A'..'Z']

removeNonUppercase st = [ c | c <- st, isUpper c ]

{- 
  Pythagorean Theorem in action!

  Write a function that returns a right triangle whose sides are
  integers and has a perimeter of x.

  | there seems to be an error with the code, but I can't figure
  out what it is...

  | | nvm. I just didn't reload the module after editing...
-}
triangle x = [ (a, b, c) | c <- [1..x/2],
                            b <- [1..c], 
                            a <- [1..b], 
                            a^2 + b^2 == c^2,
                            a + b + c == x ]

{- ingenious factorial! -}
factorial :: Integer -> Integer
factorial n = product [1..n]

{- circumference -}
circumference :: Float -> Float
circumference r = 2 * pi * r