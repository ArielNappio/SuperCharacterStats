//
//  SuperHeroCard.swift
//  SuperCharacter
//
//  Created by Ariel Nappio on 14/10/2025.
//



import SwiftUI

 struct SuperHeroCard: View {
     var hero :SuperHero
     var body: some View {
   
             
             
             ZStack {
                 Rectangle()
                 
                 VStack {
                     Spacer()
                     Text(hero.name).foregroundStyle(.white)
                         .font(Font.largeTitle.bold())
                 }
             }.frame(height: 170)
                 .cornerRadius(15)
                 .foregroundStyle(Color.backgroundComponent)
         
         
     }
}



#Preview {
    let imagenItem = SuperHeroImage(url: "")
    let item = SuperHero(id: "1" ,name: "name" ,image: imagenItem)
    
    SuperHeroCard(hero: item)
}
