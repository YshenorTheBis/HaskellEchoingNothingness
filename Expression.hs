--https://kunigami.blog/2014/01/21/an-introduction-to-the-parsec-library/
import Data.String


data BinOp = Add
           | Substract
           | Multiply
           | Exponent

data UniOp = Minus

data Expression = Variable String
           | Const Float
           | BinExpr BinOp Expression Expression 
           | UniExpr UniOp Expression

type Store = [(String, Float)]

store :: String -> Store -> Maybe Float
store key [] = Nothing
store key ((k,v):xs)
    | key == k = Just v
    | otherwise = store key xs

eval :: Store -> Expression -> Maybe Float
eval str (Const v) = Just v
eval str (Variable v) = store v str
eval str v = Nothing
