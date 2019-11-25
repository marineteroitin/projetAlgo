#encoding: utf-8
import TCarte
import TPion
import TPosition
import TPlateau

//init: -> TPartie
//Résultat : création des 16 cartes, création du plateau, création des 10 pions (5 rouges dont 4 élèves et un maître, et 5 bleus dont 4 élèves et un maître), création des 2 joueurs (un Rouge et un Bleu), 
//placement des pions tel que le maître soit au milieu de la ligne devant le joueur de sa couleur et les élèves autour de celu-ci, ces cases seront donc occupée. 
//Pré : création du plateau avant de  placer les pions (car c'est la couleur de la carteMilieu du plateau qui détermine qui commence et donc la couleur des pions qui seront en bas du plateau)
//Post : finDePartie == False
init()

//commence : TPartie -> TJoueur
//Résultat: retoune le joueur qui a la même couleur que la carteMilieu
//Pré: la partie est créée
var commence : TJoueur {get}

//finPartie : TPartie -> Bool
//Résultat: retourne True si le j1 capture le maître de j2 “Voie de la Pierre” ou si le maître de j1 va sur la case arche de j2 (la case de départ du Maitre) “Voie du Ruisseau
func finPartie(partie : TPartie) -> Bool

//aGagne : TPartie -> Sting
//Résultat: retourne la couleur du joueur qui a gagné. (celui qui a tué le maitre de l'autre ou qui a positionné son maitre est sur l'arche de l'autre (la case de départ de son maitre))
//Post: finDePartie == true
var aGagne : String {get}

//joueurCourant : TPartie -> TJoueur
//Résultat: renvoie le joueur qui est en train de jouer
var joueurCourant : TJoueur {get set}

//joueurAdverse : TPartie x TJoueur -> TJoueur
//Résultat: renvoie le joueur adverse du joueur passé en paramètre
func joueurAdverse(joueur : TJoueur) -> TJoueur

//verifierPlateau: TJoueur -> Bool
//Résultat : Retourne True si le maitre du joueur passé en paramètre est placé sur l'arche du joueur adverse ou si le maitre adverse vient d'être tué, False sinon
//Post : Envoi le joueur courant en paramètre
func verifierAdverse(joueur: TJoueur) -> TJoueur


