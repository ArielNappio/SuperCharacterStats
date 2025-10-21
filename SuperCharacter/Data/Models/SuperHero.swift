//
//  SuperHero.swift
//  PokedexAPI
//
//  Created by Ariel Nappio on 13/10/2025.
//


import Foundation

struct SuperHero: Codable, Identifiable {
    let id: String
    let name: String
    let image: SuperHeroImage
}


struct SuperHeroImage: Codable {
    let url: String
}
