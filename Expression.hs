
--https://kunigami.blog/2014/01/21/an-introduction-to-the-parsec-library/


type Variable = String

data B_Operator = Add Expression Expression
           | Substract Expression Expression
           | multiply Expression Expression
           | exponent Expression Expression

data U_Operator = minus Expression

data Expression = Variable 
           | Int 
           | Expression `B_Operator` Expression 
           | U_Operator Expression

data Store = [(k,v)]

store :: (Variable k) => k -> [(k, v)] -> Maybe v
store key [] = Nothing
store key ((k,v):xs)
    | key == x = Just v
    | otherwise = Store key xs

eval :: Store -> Expression ->Maybe Float
eval (Float v)=> str v = v
eval (Variable v)=> str v = store v str 
