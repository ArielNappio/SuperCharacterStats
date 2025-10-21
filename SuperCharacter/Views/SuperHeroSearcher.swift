//
//  ContentView.swift
//  PokedexAPI
//
//  Created by Ariel Nappio on 1    3/10/2025.
//

import SwiftUI
        
struct SuperHeroSearcher: View {
    
    @StateObject var superHeroViewModel = SuperHeroViewModel()
    @State var searchText: String = ""
    var body: some View {
        //llamo al viewModel  -> va a buscar a la claseSearchResponde los resultados y guarda todo en Heroes (es una lista)
        let heroes = superHeroViewModel.searchResponse?.results ?? []
         
        
    
            VStack{
                TextField("", text: $searchText , prompt: Text("Search ...").font(.title2).bold().foregroundColor(.gray)).font(.title2)
                    .bold()
                    .frame(maxWidth:.infinity)
                    .border(.backgroundComponent, width: 3.4)
                    .padding(10)
                    .foregroundColor(.white)
                
                //Cuando el usuario presiona enter en el TextField, se ejecuta el bloque de código.
                    .onSubmit {
                        
                        //Se usa el Task para usar una funcion asincrona desde SwiftUi( se puede creear en cualquier parte)
                        Task {
                            await superHeroViewModel.getHero(name: searchText)
                            //await se usa porque getHero es async.
                            
                            // en la funcion getHero guarda el resultado en la variable del viewmodel superHeroViewModel que tiene una funcion @Published de tipo SearchResponse
                        }
                    }
                
                
                //Si searchResponse tiene resultados (results), heroes será ese array.
                
                    List(heroes){ hero in
                        SuperHeroCard(hero: hero)
                            .listRowBackground(Color.backgroundApp)

                    
                }.listStyle(.plain)
                    //IMPORANTE

            
            }.frame(maxWidth:.infinity, maxHeight:.infinity)
                .background(.backgroundApp)
   
    }
}
    
    
    #Preview {
        SuperHeroSearcher()
    }
