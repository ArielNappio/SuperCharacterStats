//
//  ContentView.swift
//  PokedexAPI
//
//  Created by Ariel Nappio on 1    3/10/2025.
//

import SwiftUI
        
struct ContentView: View {
    
    @StateObject var superHeroViewModel = SuperHeroViewModel()
    
    var body: some View {
            //llamo al viewModel  -> va a buscar a la claseSearchResponde los resultados
    let heroes = superHeroViewModel.searchResponse?.results ?? []

        HStack{
            List(heroes){ i in
                Text(i.name)
            }        .task {
                await superHeroViewModel.getHero(name: "Batman")
            }
        }
        
    }
}
    
    
    #Preview {
        ContentView()
    }
