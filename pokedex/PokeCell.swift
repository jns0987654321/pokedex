//
//  PokeCell.swift
//  pokedex
//
//  Created by Junior Samaroo on 2017-03-30.
//  Copyright © 2017 Junior Samaroo. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder){
        //since implementing own init must call super class init in NSCoding
        super.init(coder: aDecoder)
        
        //Custom properies upon init
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon: Pokemon) {
    
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
    }
    
}
