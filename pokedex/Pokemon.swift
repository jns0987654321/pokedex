//
//  Pokemon.swift
//  pokedex
//
//  Created by Junior Samaroo on 2017-03-29.
//  Copyright © 2017 Junior Samaroo. All rights reserved.
//

import Foundation

class Pokemon {

    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int)
    {
        self._name = name
        self._pokedexId = pokedexId
    }
    
}
