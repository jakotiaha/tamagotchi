//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Jakotiah, Akshat (DWBA) on 24/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tamagotchi = Tamagotchi(hunger: 5, awake: true, discipline: 5, age: 0, full: false, happiness: 5)
    
    @State private var full = false
    
    var fullIsTrue: Bool {
        return full ? false : tamagotchi.hunger > 0 ? false : true
    }
    
    var body: some View {
       Form{
        Text("\(tamagotchi.displayStats())")
           VStack{
               Button("Feed Tamagotchi meal", action:{ tamagotchi.feedmeal()})
                   .disabled(fullIsTrue)
           }
           Button("Feed Tamagotchi snack", action:{ tamagotchi.feedsnack()})
               .disabled(fullIsTrue)
       }
     }
    

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

