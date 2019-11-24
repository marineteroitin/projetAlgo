#encoding: utf-8
import TCarte
import TPion
import TPartie
import TPosition
import TJoueur
import TPlateau

//je crée la partie :
p = TPartie()

//affectation du joueur courant
p.joueurCourant = p.commence

print("Joueur " p.joueurCourant.couleur " à toi de jouer ! \n "

while (!p.finDePartie) {
   if(existeDeplacement(p.joueurCourant)){ //si un déplacement est possible avec les cartes qu'il possède
       print("choisi une carte parmi les suivantes:  (tape son nom) \n")
       //afficher les carter du joueur
       for i in getCartes(p.joueurCourant){
           afficherCarte(i)
       }
       //je stock le nom de la carte choisie dans une variable
       var nomCarte = readLine()
       //vérifier que la carte est bien une des cartes du joueur et redemander si besoin
        while (!(nomCarte === (getCartes(p.joueurCourant)[1].nom)) || !(nomCarte === (getCartes(p.joueurCourant)[2].nom)){
            print("tu n'a pas saisie le nom d'une de tes cartes, recommence ! \n")
                 var nomCarte = readLine()
        }




        //demander quel pion il veut bouger et verifier que le pion est en vie






        /*
        print("tu as choisi la carte:" + nomCarte + "quel déplacement (x,y) veut tu faire ? \n")
        var deplacement = readLine()

        //vérifier que le déplacement appartient bien à la carte choisie
        if (nomCarte === (getCartes(p.joueurCourant)[1].nom){
            while !(deplacement === ?????????????????????????){
                print("tu n'a pas saisie un déplacement de ta carte, recommence ! \n")
                var deplacement = readLine()
            }
        }else{//le joueur a choisi l'autre carte
        while !(deplacement === ???????????????????????????????????){
            print("tu n'a pas saisie un déplacement de ta carte, recommence ! \n")
            var deplacement = readLine() }
        }
        
        bouger le pion, tuer si necessaire un pion adverse
        echanger les cartes
        }else{
        afficher (aucun déplacement possible... choisi la carte à échanger parmi les suivantes)
        afficher les carte du joueur
        selectionner la carte choisie
        echanger les cartes 
        }

    //changement du joueur courant
    p.joueurCourant = p.joueurAdverse(p.joueurCourant)


print("La partie est terminée, le gagnant est le joueur de couleur" + p.aGagne )



