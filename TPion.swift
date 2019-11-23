#encoding: utf-8

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
//Résultat: la case (x,y) devient occupée et l'ancienne ne l'est plus. ATTENTION si c'est le joueur de la couleur commence, il n'y a pas de problème mais si c'est l'autre joueur les déplacement se font dans le sens opposé à cause de l'orientation du plateau (x(-1)les déplacement selon x et y)
//Post: peutBouger(pion, position)==vraie
mutating func bougerPion(pion : TPion, x : Int, y : Int)

//peutBouger : TPion x Int x Int -> Bool
//Résultat: true si le pion appartient au joueur, est vivant, la nouvelle position ne sort pas de la grille, et n'est pas occupée par un de ses pions (de la même couleur).
//Post: la position définie par x,y doit être une position obtenue avec une carte du joueur qui joue
func peutBouger(pion : TPion,x : Int, y : Int) -> Bool



