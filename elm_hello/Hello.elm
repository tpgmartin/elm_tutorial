-- module declaration, exposting everything
module Hello exposing (..)
-- expose specific modules
import Html exposing (text)

-- main specifies what is returned for the page to render
main = 
  -- text (toString (add 1 2))
   text (toString (switch "A" 3))

-- signature indicates takes two integers and returns an integer
add : Int -> Int -> Int
add x y =
  x + y

-- Use pipe operator to make combination of operators more readable

-- Must specify variable type of array elements e.g. Array String
-- Use variable type placeholders to make functions generic e.g.
switch : ( a, b ) -> ( b, a )
switch ( x, y ) =
  ( y, x )