#encoding: utf-8

//init: -> TCarte
//Résultat: cette fonction crée une carte avec un nom, une couleur et un motif = l'ensemble des déplacements posibles par rapport à la case occupée par le joueur
//Post:la couleur est soit "rouge" soit "bleu"
init()

//nom : TCarte -> String
//Résultat: Retourne le nom de la carte
//Post: La carte passé en paramètre appartient au tas de cartes du plateaux
var nom : String {get}

//couleur : TCarte -> String
//Résultat: Retourne la couleur de la carte, soit "bleu", soit "rouge"
//Post: La carte passé en paramètre appartient au tas de cartes du plateaux
var couleur : String {get}

//getMotif: -> (Int,Int)
//Résultat: retourne tous les déplacements possibles par rapport à la case occupée par le joueur.
func  getMotif() -> (Int,Int)

//afficherCarte : TCarte
//Resultat: affiche le nom et les déplacements possibles de la carte passée en paramètres
//Pré: les cartes ont été distribuées
func afficherCarte() 

//deplacementAppartientMotif : TCarte x Int x Int -> Bool
//Résultat: retourne true si le déplacement Int x Int appartient au motif de la carte passée en paramètre
func deplacementAppartientMotif(x : x, y : y) -> Bool
