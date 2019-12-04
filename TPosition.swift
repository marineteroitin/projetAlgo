protocol TPosition{
    //init: -> TPosition
    //Résultat: création d'une TPosition qui ne contient pas de pion
    //post: estOccupee(init())=false
    init()

    //estOccupee : Bool
    //Résultat: return True si un pion est sur la position, false sinon 
    var estOccupee : Bool {get set}
}
