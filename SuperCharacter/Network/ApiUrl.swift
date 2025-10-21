//
//  ApiUrl.swift
//  PokedexAPI
//
//  Created by Ariel Nappio on 13/10/2025.
//

struct ApiUrl {
    
    let query : String
    
    var Url: String {
        return "https://superheroapi.com/api/6c063cf158fed81ef3800ef5fec22ce3/search/\(query)"
    }
    
}
