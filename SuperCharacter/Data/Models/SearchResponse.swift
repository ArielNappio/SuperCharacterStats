//
//  SearchResponse.swift
//  PokedexAPI
//
//  Created by Ariel Nappio on 13/10/2025.
//


import Foundation
    
    
    //Codable = @Serializable
    struct SearchResponse : Codable{
        let response: String
        let error: String?
        let results :[SuperHero]?
    }
    

