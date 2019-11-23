#encoding: utf-8

//init: -> TCarte
//Résultat: cette fonction crée une carte avec un nom, une couleur et un motif l'ensemble des déplacements posibles par rapport à la case occupée par le joueur
//Post:la couleur est soit "rouge" soit "bleu"
init()

//afficherDeplacement: -> ((Int),(Int))
//Résultat: affiche tous les déplacements possibles par rapport à la case occupée par le joueur
//Post: La carte passé en paramètre appartient au tas de cartes du plateaux
func  afficherDeplacement() -> ((Int),(Int))

//nom : TCarte -> String
//Résultat: Retourne le nom de la carte
//Post: La carte passé en paramètre appartient au tas de cartes du plateaux
var nom : String {get}

//couleur : TCarte -> String
//Résultat: Retourne la couleur de la carte, soit "bleu", soit "rouge"
//Post: La carte passé en paramètre appartient au tas de cartes du plateaux
var couleur : String {get}
