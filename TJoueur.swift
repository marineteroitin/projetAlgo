#encoding: utf-8

//init: -> TJoueur
//Résultat: cette fonction crée un joueur avec une couleur, 4 pions élèves et un pion maître (tous en vie) , avec deux cartes vides
init()

//getCartes : TJoueur 
//Resultat: retourne les deux cartes du joueur
//Pré: les cartes ont été distribuées
func getCartes(Joueur : TJoueur) -> (TCarte,TCarte)

//getPions : TJoueur -> TPion x TPion x TPion x TPion x TPion
//Résultat : retourne les pions du joueur
//Pré : le joueur à été créé
func getPions(Joueur : TJoueur) -> (TPion, TPion, TPion, TPion, TPion)

//couleur : TJoueur -> String
//Résultat : retourne la couleur du pion, soit "bleu", soit "rouge"
//Post: le pion a été crée auparavant
var couleur : String {get}

//echangerCarte : TJoueur x TCarte x TPlateau
//Résultat: echange la carte du joueur passée en paramètre avec la carteMilieu du plateau 
//Pré: la carte doit appartenir au joueur, et s'il a pu déplacer son pion, ça doit être la carte qu'il a utilisé. Si il n'a pas pu déplacer son pion, ça peut être n'importe laquelle de ses deux cartes
func echangerCarte(joueur : TJoueur, carte : TCarte, plateau : TPlateau)

//afficherPionsEnVie : TJoueur
//Résulat: affiche les pions en vie du joueur passé en paramètre (son type (élève ou maitre) et sa position), en utilisant la fonction afficherPion de TPion
func afficherPionsEnVie(joueur : TJoueur)

//afficherCartes : TJoueur
//Résulat: affiche les carte du joueur passé en paramètre (nom et motif (déplacements possibles)), en utilisant la fonction afficherCarte de TCarte
func afficherCartes(joueur : TJoueur)

//existeDeplacement : TJoueur -> Bool
//Résultat: retourne true si le joueur peut déplacer au moins un de ses pions en vie avec les cartes qu'il a 
//pré: le joueur à été créé 
func existeDeplacement(joueur : TJoueur) -> Bool

//existePion : TJoueur x TPosition -> Bool
//Résultat: retourne true si le joueur possède un pion en vie à la position passée en paramètres
func existePion(joueur : TJoueur, position : TPosition) -> Bool

//existeCarte : TJoueur x String -> Bool
//Résultat: retourne true si le joueur possède une carte avec le nom passé en paramètres
func existeCarte(joueur : TJoueur, nom : String) -> Bool

//getCarte : TJoueur x String -> TCarte
//Résultat: retourne la TCarte du joueur qui a le nom passé en paramètre
//Pré: existeCarte(joueur,nom)==true
func getCarte(joueur : TJoueur, nom : String ) -> TCarte

//getPion : TJoueur x TPosition -> TPion
//Résultat: retoune le TPion du joueur qui se trouve sur la position passée en paramètre
//Pré: existePion(joueur, TPosition ) == true
func getPion(joueur : TJoueur, position : TPosition) -> TPion