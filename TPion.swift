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

//bougerPion : TPion x Int x Int 
//Résultat: l'ancienne position n'est plus occupée. Le pion est sur la nouvelle position qui sera donc occupée.
// ATTENTION si c'est le joueur de la couleur commence, il n'y a pas de problème on déplacera le pion de +x sur sa ligne et +y sur sa colonne 
//mais si c'est l'autre joueur les déplacement se font dans le sens opposé à cause de l'orientation du plateau: -x  sur sa ligne et -y sur sa colonne
//Post: peutBouger(pion, position)==vraie
mutating func bougerPion(pion : TPion, x : Int, y : Int)

//peutBouger : TPion x Int x Int -> Bool
//Résultat: true si le pion appartient au joueur, est vivant, la nouvelle position ne sort pas de la grille, et n'est pas occupée par un de ses pions (de la même couleur).
//Pré: le déplacement (x,y) par rapport à la case du joueur doit correspondre à un déplacement d'une carte du joueur
func peutBouger(pion : TPion, x : Int, y : Int) -> Bool


//afficherPion : TPion
//Résulat: affiche le pion passé en paramètre (sa couleur, son type (élève ou maitre) et sa position)
func afficherPion(pion : TPion)

