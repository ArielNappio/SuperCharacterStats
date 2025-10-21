//
//  SearchResponseViewModel.swift
//  SuperCharacter
//
//  Created by Ariel Nappio on 13/10/2025.
//

import Foundation
internal import Combine



class SuperHeroViewModel: ObservableObject {
    let apiService : ApiService = ApiService ()
    
    @Published var searchResponse:SearchResponse? = nil
    @Published var isLoading:Bool = false
    @Published var error:String? = nil
    @Published var heroName:String? = nil
    
    func getHero(name:String) async -> NetworkReponse<SearchResponse> {
        isLoading = true
        error = nil
        
        //Guardo la pegada en la variable Result
        let result = await apiService.searchHero(name: name)
        
        
        //al ser una funcion asyn tiene 3 valores .Succes , .Failure y .Loading
        switch result {
            
        case .success(let response) :
            searchResponse = response
            
            
        case .failure(let networkError):
            error = networkError
            
        case .loading:
            isLoading = false
        }
        
        return result
    }
    
}
