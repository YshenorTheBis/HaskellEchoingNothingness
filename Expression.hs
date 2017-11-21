
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

type Store = [(Variable,Float)]

store :: (Variable k) => k -> Store -> Maybe v
store key [] = Nothing
store key ((k,v):xs)
    | key == x = Just v
    | otherwise = Store key xs

eval :: Store -> Expression ->Maybe Float
eval (Float v)=> str v = v
eval (Variable v)=> str v = store v str 
