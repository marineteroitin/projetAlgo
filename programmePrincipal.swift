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

		repeat {
			//on affiche les pions et les cartes du joueur		
			p.joueurCourant.afficherCartes()
			p.joueurCourant.afficherPionsEnVie()

		    	//Le joueur choisis un de ses pions toujours en vie
			repeat {
				print("Il faut choisir la position d'un des pions parmis ceux proposés : \n")
				posittionPionChoisi = readLine() //Le joueur saisi en console la position du pion qu'il veut bouger
			} while !(p.joueurCourant.existePion(position : positionPionChoisi)) //redemande un pion tant qu'il ne saisie pas la position d'un de ses pions en vie
			var pionChoisi = getPion(joueur : p.joueurCourant, position : positionPionChoisi) //récupérer le pion choisi

		    	//Le joueur choisis maintenant une carte 
			repeat {
				print("Il faut saisir le nom d'une des cartes parmis celles proposées : \n")
				nomCarteChoisie = readLine() //Le joueur saisi en console le nom de la carte qu'il veut jouer
			} while !(p.joueurCourant.existeCarte(nom : nomCarteChoisie)) //redemande une carte tant qu'il ne saisie pas le nom d'une de ses cartes
			var carteChoisie = getCarte(joueur : p.joueurCourant, nom : nomCarteChoisie ) //récupérer la carte choisie
			
			//le joueur choisi le déplacement qu'il veut faire.
			repeat {
				print("Il faut choisir le déplacement que tu veux réaliser: x puis y : \n")
				var x = readLine()
				var y = readLine()
			} while !(deplacementAppartientMotif(carte : carteChoisie, x : x, y : y) ) //vérifier que le déplacement appartient à la carte que le joueur à choisi
            
			
			//vérifier que le mouvement que le mouvement choisit est possible avec sa carte et son pion qu'il a choisi
		    	if (peutBouger(position : pionChoisi.position, x : x, y : y)){ 
				bougerPion(pion : pionChoisi, x : x, y : y) //je tue le pion adverse si besoin lorsque je bouge

		        	//Une fois que le joueur a bougé son pion: la carte utilisée est échangée avec celle du milieu 
		        	p.joueurCourant.echangerCarte(carte : carteChoisie, plateau : p)
				  
				//le tour est fini
				finTour = true

		    	} else {
		            	print("Le mouvement choisi pour ce pion n'est pas possible avec cette carte, il faut choisir une autre carte ou un autre pion \n ")
			}
		} while(!finTour)
	} else {
        	print("Aucun déplacement n'est possible avec les cartes que tu possèdes. Quelle carte veut tu échanger avec celle du plateau ? \n")
        	
		//afficher les carte du joueur
		p.joueurCourant.afficherCartes()

		repeat {
			print("Il faut saisir le nom de la carte à échanger : \n")
			var nomCarteChoisie = readLine() //Le joueur saisi en console le nom de la carte qu'il veut 	
		} while !(p.joueurCourant.existeCarte(nom : nomCarteChoisie)){ //redemande une carte tant qu'il ne saisie pas le nom d'une de ses cartes
		var carteChoisie = getCarte(joueur : p.joueurCourant, nom : nomCarteChoisie ) //récupérer la carte choisie

        	//echanger les cartes 
		p.joueurCourant.echangerCarte(carte : carteChoisie, plateau : p)
	}
        
	//changement du joueur courant
	p.joueurCourant = p.joueurAdverse(p.joueurCourant)
}
print("La partie est terminée, le gagnant est le joueur de couleur" + p.aGagne )



