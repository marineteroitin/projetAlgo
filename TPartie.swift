protocol TPartie{
    //init: -> TPartie
    //Résultat : RESPECTERE L'ORDRE : création des 16 cartes, création du plateau, création des 10 pions (5 rouges dont 4 élèves et un maître, et 5 bleus dont 4 élèves et un maître), création des 2 joueurs (un Rouge et un Bleu),
    //placement des pions tel que le maître soit au milieu de la ligne devant le joueur de sa couleur et les élèves autour de celu-ci, ces cases seront donc occupée.
    //Pré : RESPECTER L'ORDRE: créer cartes avant le plateau, le plateau avant les pions, et les pions avant les joueurs.
    //Post: finDePartie(init()) == false et aGagne == nil
    init()

    //plateau : TPartie -> TPlateau
    //Résulat : Retourne le plateau de la partie
    //Pré : le plateau a été créé auparavant
    var plateau : TPlateau {get set}
    
    //aGagne : TPartie -> Sting
    //Résultat: retourne la couleur du joueur qui a gagné. (celui qui a tué le maitre de l'autre ou qui a positionné son maitre est sur l'arche de l'autre (la case de départ de son maitre))
    //Pré: finDePartie == true
    var aGagne : String {get}

    //commence : TPartie -> TJoueur
    //Résultat: retoune le joueur qui a la même couleur que la carteMilieu
    //Pré: la partie est créée
    var commence : TJoueur {get}

    //joueurCourant : TPartie -> TJoueur
    //Résultat: renvoie le joueur qui est en train de jouer
    //Pré : pour le set, il faut envoyer un TJoueur
    var joueurCourant : TJoueur {get set}

    //finPartie : TPartie -> Bool
    //Résultat: retourne True si le j1 capture le maître de j2 “Voie de la Pierre” ou si le maître de j1 va sur la case arche de j2 (la case de départ du Maitre) “Voie du Ruisseau
    func finPartie() -> Bool

    //joueurAdverse : TPartie -> TJoueur
    //Résultat: renvoie le joueur adverse du joueur courant
    //Pré : Envoi le joueur courant en paramètre
    var joueurAdverse: TJoueur {get set}
    
    //changerJoueur : TPartie
    //Résulat: le joueurCourant devient le joueurAdverse et inversement
    func changerJoueur()
}
