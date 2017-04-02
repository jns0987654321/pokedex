//
//  Pokemon.swift
//  pokedex
//
//  Created by Junior Samaroo on 2017-03-29.
//  Copyright © 2017 Junior Samaroo. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {

    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defence: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolutionTxt: String!
    private var _pokemonURL: String!
    
    var description: String {
        if _description == nil {
            _description = "N/A"
        }
        return _description
    }
    
    var type: String {
        if _type == nil {
            _type = "N/A"
        }
        return _type
    }
    
    var defence: String {
        if _defence == nil {
            _defence = "N/A"
        }
        return _defence
    }
    
    var height: String {
        if _height == nil {
            _height = "N/A"
        }
        return _height
    }
    
    var weight: String {
        if _weight == nil {
            _weight = "N/A"
        }
        return _weight
    }
    
    var attack: String {
        if _attack == nil {
            _attack = "N/A"
        }
        return _attack
    }
    
    var nextEvolutionTxt: String {
        if _nextEvolutionTxt == nil {
            _nextEvolutionTxt = "N/A"
        }
        return _nextEvolutionTxt
    }
    
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
        
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)/"
    }
    
    func downloadPokemonDetail(completed: DownloadComplete) {
        Alamofire.request(_pokemonURL).responseJSON { (response) in
            
            if let dict = response.result.value as? Dictionary<String, AnyObject> {
                if let height = dict["height"] as? String {
                    self._height = height
                }
                if let weight = dict["weight"] as? String {
                    self._weight = weight
                }
                if let attack = dict["attack"] as? Int {
                    self._attack = "\(attack)"
                }
                if let defence = dict["defence"] as? Int {
                    self._defence = "\(defence)"
                }
            }
            
            completed()
            
        }
    }
    
}
