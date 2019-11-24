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

//echangerCarte : TCarte x TPlateau
//Résultat: echange la carte passée en paramètre avec la carteMilieu du plateau 
//Pré: la carte doit appartenir au joueur, et s'il a pu déplacer son pion, ça doit être la carte qu'il a utilisé. Si il n'a pas pu déplacer son pion, ça peut être n'importe laquelle de ses deux cartes
func echangerCarte(carte : TCarte, plateau : TPlateau)

//existeDeplacement : TJoueur -> Bool
//Résultat: retourne true si le joueur peut déplacer au moins un pion avec les cartes qu'il a 
//pré: le joueur à été créé 
func existeDeplacement(joueur : TJoueur) -> Bool
