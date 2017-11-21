type Handler = [ String ] -> Store -> IO Store
data Command = Command {
name :: String , -- Nom de la commande
description :: String , -- Description de la commande
-- utilise ’ par la commande - help
exits :: Bool , -- Drapeau pour sortir de la boucle ,
-- vrai pour quit , faux pour les autres
run :: Handler -- Le code a ‘ executer
}
