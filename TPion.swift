#encoding: utf-8
import TCarte
import TJoueur
import TPosition

//init:  -> TPion
//Résultat: crée un pion avec un couleur , un type de pion, et un boolean estVivant
//Pré: la couleur est soit "rouge" soit "bleu", le type de pion est soit "eleve" soit "maitre"
//Post : estVivant(init())==True
init()

//couleur : TPion -> String
//Résultat : retourne la couleur du pion, soit "bleu", soit "rouge"
//Post: le pion a été crée auparavant
var couleur : String {get}

//type : TPion -> String
//Résultat : retourne le type de pion, soit "maitre" soit "eleve"
//Post: le pion a été crée auparavant
var type : String {get}

//position : TPion -> TPosition
//Résultat : retourne la position occupée par le pion
//Post: la partie à été crée et donc les pions initialisé à une position
var position : TPosition {get set}

//estVivant : TPion -> Bool
//Résultat: retourne true si le pion n'a pas été tué par l'adversaire 
//Pré: la partie à été crée et donc les pions initialisé à une position
var estVivant : Bool {get set}

//peutBouger : TPion x Int x Int -> Bool
//Résultat: true si le pion appartient au joueur, est vivant, et que la nouvelle position de ce pion ne sort pas de la grille, et n'est pas occupée par un de ses pions (de la même couleur).
//Pré: le déplacement (x,y) par rapport à la case du joueur doit correspondre à un déplacement d'une carte du joueur
func peutBouger(x : Int, y : Int) -> Bool


//afficherPion : TPion
//Résulat: affiche le pion passé en paramètre (sa couleur, son type (élève ou maitre) et sa position)
func afficherPion()

