
--https://kunigami.blog/2014/01/21/an-introduction-to-the-parsec-library/




data Expression = Variable | int | Expression B_Operator Expression | U_Operator Expression

data U_Operator = substract :: Expression -> - Expression

data B_Operator = somme :: Expression -> Expression
, multiplication, et exponentiation


Store :: (Eq k) => k -> [(k, v)] -> Maybe v
Store key [] = Nothing
Store key ((k,v):xs)
	| key == x = Just v
	| otherwise = Store key xs

data Variable

eval :: Store -> Expression ->Maybe Float