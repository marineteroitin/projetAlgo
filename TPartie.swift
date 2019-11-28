#encoding: utf-8
import TCarte
import TPion
import TPosition
import TPlateau

//init: -> TPartie
//Résultat : création des 16 cartes, création du plateau, création des 10 pions (5 rouges dont 4 élèves et un maître, et 5 bleus dont 4 élèves et un maître), création des 2 joueurs (un Rouge et un Bleu), 
//placement des pions tel que le maître soit au milieu de la ligne devant le joueur de sa couleur et les élèves autour de celu-ci, ces cases seront donc occupée. 
//Pré : création du plateau avant de  placer les pions (car c'est la couleur de la carteMilieu du plateau qui détermine qui commence et donc la couleur des pions qui seront en bas du plateau)
init()

//aGagne : TPartie -> Sting
//Résultat: retourne la couleur du joueur qui a gagné. (celui qui a tué le maitre de l'autre ou qui a positionné son maitre est sur l'arche de l'autre (la case de départ de son maitre))
//Pré: finDePartie == true
var aGagne: String {get}

//commence : TPartie -> TJoueur
//Résultat: retoune le joueur qui a la même couleur que la carteMilieu
//Pré: la partie est créée
var commence: TJoueur {get}

//joueurCourant : TPartie -> TJoueur
//Résultat: renvoie le joueur qui est en train de jouer
//Pré : pour le set, il faut envoyer un TJoueur
var joueurCourant: TJoueur {get set}

//finPartie : TPartie -> Bool
//Résultat: retourne True si le j1 capture le maître de j2 “Voie de la Pierre” ou si le maître de j1 va sur la case arche de j2 (la case de départ du Maitre) “Voie du Ruisseau
func finPartie() -> Bool

//joueurAdverse : TPartie x TJoueur -> TJoueur
//Résultat: renvoie le joueur adverse du joueur passé en paramètre
//Pré : Envoi le joueur courant en paramètre
func joueurAdverse(joueur: TJoueur) -> TJoueur

//afficherPartie : TPartie -> String
//Résultat : renvoi la grille de 5 par 5 avec les positions de tous les pions sous forme de texte dans la console
//Pré : La partie a été initialisée
func afficherPartie() -> String


