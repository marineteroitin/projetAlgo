#encoding: utf-8
import TCarte

//init: -> TPlateau
//Pré : les cartes du jeu doivent être créer
//Résultat : création d'un TPlateau (une grille de TPositions de taille 5x5) et attribution de la carteMilieu (TCarte)
init()

//carteMilieu : TPlateau -> TCarte
//Pré: les carte ont déjà été distribuées 
//Résultat: retourne la carte du milieu du plateau 
var carteMilieu : TCarte {get set}

//estOccupee: TPlateau x Int x Int -> Bool
//Résultat: true si il y a un pion sur la position
//Post: x la colonne et y la ligne de la position, (x,y) appartiennent à la grille 
func estOccupee(x: Int, y: Int) -> Bool