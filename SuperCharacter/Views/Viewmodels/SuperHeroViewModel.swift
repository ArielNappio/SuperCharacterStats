//
//  SearchResponseViewModel.swift
//  SuperCharacter
//
//  Created by Ariel Nappio on 13/10/2025.
//

import Foundation
internal import Combine


class SearchResponseViewModel: ObservableObject {
    let apiService : ApiService = ApiService ()
    
    @Published var SearchResponse: [SearchResponse] = nil

    
    func getHero(name: String) async -> NetworkReponse<SearchResponse>  {
        await apiService.searchHero(name: name)
    }
        
    
}
