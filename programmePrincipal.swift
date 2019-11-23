#encoding: utf-8
import TCarte
import TPion
import TPartie
import TPosition

/*idée 
//je crée la partie :
p = TPartie()

//affectation du joueur courant
joueurCourant = commence (var de TPpartie)

afficher "Joueur joueurCourant.couleur, à toi de jouer !"

while (!p.finDePartie) {
    vérifier que le joueur puisse déplacer un pion, 
    SI OUI :
        afficher ("choisi une carte parmi les suivantes")
        afficher les carte du joueurCourant (son nom et les déplacements possibles pour chacune d'entre elles)
        selectionner la carte choisie (créer une variable car en cous utilisation ??? utile pour déplacement et pour echanger à la fin du tour )
        demander le deplacement qu'il veut (choix de la carte, puis de la position choisie sur la carte)
        afficher les deplacement possible avec la carte qu'il a choisi
        vérifier si le pion peut se déplacer selon le déplacement qu'il a choisi, si false lui redemander un autre déplacement
        sinon bouger le pion, tuer si necessaire un pion adverse
        echanger les cartes

    SINON 
        afficher (aucun déplacement possible... choisi la carte à échanger parmi les suivantes)
        afficher les carte du joueur
        selectionner la carte choisie
        echanger les cartes 

    //changement du joueur courant
    couleurJoueurCourant = changerJoueurCourant() JE SUIS PAS SURE DE LA SIGNATURE DE LA FONCTION changerJoueurCourant()
}


afficher "partie terminée, le gagnant est le joueur de couleur aGagne"



*/