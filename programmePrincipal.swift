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

while (!p.finDePartie) {
   
        //variable pour déterminer si le tour est terminé (un pion a été bougé ou non)
        var finTour: Bool = false
        
        do {
            
//----------------------------------------------------------------------------------------------------
//Dans ce cas il faut créer les fonctions pour afficher dans TJoueur
            //Le joueur choisis un des pions toujours en vie sur le plateau
            print("Choisis un pion parmis les suivants : ")
            afficherPions() 
            var pionChoisi = readLine() //Le joueur saisi en console le pion qu'il veut jouer

            //Le joueur choisis un des pions toujours en vie sur le plateau
            print("Choisis unu carte parmis les suivantes : ")
            afficherCartes()
            var carteChoisie = readLine() //Le joueur saisi en console la carte qu'il veut jouer
//----------------------------------------------- OU ---------------------------------------------------
            //Le joueur choisis un des pions toujours en vie sur le plateau
            print("Choisis un pion parmis les suivants : ")
            for i in getPions(p.joueurCourant){
                print(i) //affiche les pions un par un
            }
            var pionChoisi = readLine() //Le joueur saisi en console le pion qu'il veut jouer

            // Le joueur choisi un carte parmis les 2 possibles dans sa main
            print("Choisis une carte : ")
            for i in getCartes(p.joueurCourant){
                print(i) //Affiche les cartes une par une
            }
            var carteChoisi = readLine() //Le joueur saisi en console la carte qu'il veut jouer
//--------------------------------------------------------------------------------------------------
            
            //Récupère tous les déplacements possibles en fonctions la carte et du pion choisi
            //A voir si il faut les afficher ou pas pour le joueur ou si il doit trouver les coordonnées possibles par lui-même
            var deplacements = existeDeplacement(p.joueurCourant, pionChoisie, carteChoisie
            
            //Si existeDeplacement retourne au moins un déplacement
            if (deplacements == nil)) {
                //Demande au joueur de selectionner un des déplacements proposés dans la fonction (rentrer les coordronnées x,y de la nouvelle position ?)
                selectionnerDeplacement()       
                
                //Si le coordonnées choisie par le joueur est valide, alors on bouge le pion
                if (peutBouget(pionChoisi, x, y)){
                    //Gère le sens du mouvement des pions
                    if (p.joueurCourant == p.commence){
                        bougerPion(pionChoisi, x, y)
                    } else {
                        bougerPion(pionChoisi, -x, -y)
                    }
                    // Faut-il vérifier maintenant si la partie est terminée


                    //Une fois que le joueur a bougé son pion: la carte est échangée
                    echangerCarte(carteChoisie)
                } else {
                    print("Le mouvement choisi pour ce pion avec cette carte n'est pas possible")
                }
            //Si existeDeplacement a retourné aucun mouvement
            } eles {
                print("Aucun déplacement n'est possible pour ce pion avec cette carte, il faut choisir une autre carte ou un autre pion")
            }
        }
        while(!finTour)


        //changement du joueur courant
        p.joueurCourant = p.joueurAdverse(p.joueurCourant)

        //Il faut toujours déterminer quand la partie est terminée
        //Il n'y a plus aucune fonction pour tuer un pion adverse
        }
       
print("Fin de la partie :")
       
       
       
       /*
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
        }a




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



