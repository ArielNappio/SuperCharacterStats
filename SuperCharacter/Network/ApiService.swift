//
//  ApiService.swift
//  PokedexAPI
//
//  Created by Ariel Nappio on 13/10/2025.
//

import Foundation

class ApiService : ApiProvider {
    
    func searchHero(name: String) async -> NetworkReponse<SearchResponse> {
        
        // Creo la instancia de la URL
        let apiUrlCreateInstance = ApiUrl(query: name)
        
        // Obtengo la URL final
        let urlString = apiUrlCreateInstance.Url
        
        // Valido y convierto a URL
        guard let url = URL(string: urlString) else {
            return NetworkReponse.failure("URL inválida")
        }

        do {
            //  petición HTTP
            let (data, _) = try await URLSession.shared.data(from: url)

            //  decodifico el JSON a tu modelo
            let response = try JSONDecoder().decode(SearchResponse.self, from: data)

            //  Retornar éxito , el response (el dato que buscabamos)
            return  NetworkReponse.success(response)

        } catch {
            //  Capturar cualquier error (red, parseo, etc.)
            return NetworkReponse.failure("Error: \(error.localizedDescription)")
        }
    }

}
