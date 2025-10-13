//
//  NetworkReponse.swift
//  PokedexAPI
//
//  Created by Ariel Nappio on 13/10/2025.
//


enum NetworkReponse<T>{
    case loading
    case success(T)
    case failure(String)
}


