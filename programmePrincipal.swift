#encoding: utf-8
import TCarte
import TPion
import TPartie
import TPosition
import TJoueur
import TPlateau

//je crée la partie :
var p: TPartie = TPartie()

//affectation du joueur courant
p.joueurCourant = p.commence

print("Joueur " p.joueurCourant.couleur " à toi de jouer ! \n "

while (!p.finDePartie()) {
   

 	if(existeDeplacement(p.joueurCourant)){ //vérifie si un déplacement est possible avec les cartes qu'il possède

		//variable pour déterminer si le tour est terminé (un pion a été bougé ou non)
		var finTour: Bool = false

		do {
			//on affiche les pions et les cartes du joueur		
			p.joueurCourant.afficherCartes()
			p.joueurCourant.afficherPionsEnVie()

		    //Le joueur choisis un de ses pions toujours en vie
		    print("Choisis un pion en donnant sa position: \n")
		    var pionChoisi = readLine() //Le joueur saisi en console la position du pion qu'il veut bouger
//demander une fonction qui vérifie qu'un pion de ce joueur existe bien à cette position 
//et redemander une saisie tant que la fonction est false

		    //Le joueur choisis un des pions toujours en vie sur le plateau
		    print("Choisis une carte en donnat son nom:\n")
		    var carteChoisie = readLine() //Le joueur saisi en console le nom de la carte qu'il veut jouer
//idem que pour pion
		    
			
		    
		    //demander quel mouvement ?
//vérifier que le mouvement que le mouvement choisit est possible avec sa carte et son pion qu'il a choisi
//vérifier suite
		        if (peutBouger(pionChoisi, x, y)){
		            //Gère le sens du mouvement des pions
		            if (p.joueurCourant == p.commence){
		                bougerPion(pionChoisi, x, y)
		            } else {
		                bougerPion(pionChoisi, -x, -y)
		            }
		           


		            //Une fois que le joueur a bougé son pion: la carte est échangée
		            echangerCarte(carteChoisie) //attention carte choisie est un string !!!!!
//findepartie=true

		        } else {
		            print("Le mouvement choisi pour ce pion avec cette carte n'est pas possible")
		        }
		    //Si existeDeplacement a retourné aucun mouvement
		    } else {
		        print("Aucun déplacement n'est possible pour ce pion avec cette carte, il faut choisir une autre carte ou un autre pion")
		    }
		}
		while(!finTour)
	} else {
        	afficher (aucun déplacement possible... choisi la carte à échanger parmi les suivantes)
        	afficher les carte du joueur
        	selectionner la carte choisie
        	echanger les cartes 
	}


        //changement du joueur courant
        p.joueurCourant = p.joueurAdverse(p.joueurCourant)


	//Fonction qui vérifie qu'un carte apprtient bien au joueur
	//Fonction qui dit si un déplacement appartient au motif d'une carte
        //Il n'y a plus aucune fonction pour tuer un pion adverse
        }
       
print("La partie est terminée, le gagnant est le joueur de couleur" + p.aGagne )



