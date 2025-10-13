//
//  ApiService.swift
//  PokedexAPI
//
//  Created by Ariel Nappio on 13/10/2025.
//


//protocol define una interfaz o contrato.

protocol ApiProvider {
    func searchHero(name: String) async -> NetworkReponse <SearchResponse>
}

//async → indica que la función es asíncrona, o sea, puede suspender su ejecución

