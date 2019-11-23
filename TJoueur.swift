#encoding: utf-8

//init: -> TJoueur
//Résultat: cette fonction crée un joueur avec une couleur, 4 pions élèves et un pion maître (tous en vie) , avec deux cartes vides
init()

//getCartes : TJoueur -> TCarte x TCarte
//Resultat: retourne les deux cartes du joueur
//Pré: les cartes ont été distribuées
func getCartes(Joueur : TJoueur) -> (TCarte,TCarte)

//getPions : TJoueur -> TPion x TPion x TPion x TPion x TPion
//Résultat : retourne les pions du joueur
//Pré : le joueur est créé
func getPions(Joueur : TJoueur) -> (TPion, TPion, TPion, TPion, TPion)

//couleur : TJoueur -> String
//Résultat : retourne la couleur du pion, soit "bleu", soit "rouge"
//Post: le pion a été crée auparavant
var couleur : String {get}

//echangerCarte : TCarte x TPlateau
//Résultat: echange la carte passée en paramètre avec la carteMilieu du plateau 
//Post: la carte passé en paramètre est celle que le joueur vient d'utiliser s'il a déplacé son pion, si aucun déplacement n'était possible alors la carte en paramètre doit juste appartenir au joueur (être de la couleur de celui qui vient de jouer).
func echangerCarte(carte : TCarte, plateau : TPlateau)