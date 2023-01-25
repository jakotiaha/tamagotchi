//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Jakotiah, Akshat (DWBA) on 24/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tamagotchi = Tamagotchi(hunger: 5, awake: true, age: 0, full: false, happiness: 5, droppings: false, health: 5,  bathroomNeeded: 5)
    
    @State private var full = false
    @State private var timeTillDroppings = 20
    @State private var droppings = false
    
    var fullIsTrue: Bool {
        return full ? false : tamagotchi.hunger > 0 ? false : true
    }
    
    var maxHappiness: Bool {
        return full ? true : tamagotchi.happiness > 10 ? true : false
    }
    
    let timer = Timer.TimerPublisher(interval: 1, runLoop: .main, mode: .common)

    
    var body: some View {
        VStack{
           Form{
               Text("TAMAGOTCHI")
                   .foregroundColor(.orange)
               Text("\(tamagotchi.displayStats())")
               Text("Time till droppings: \(timeTillDroppings)")
                   .onReceive(timer) { _ in
                       if self.timeTillDroppings > 0 {
                           self.timeTillDroppings -= 1
                       } else {
                           self.droppings = true
                       }
                   }
               VStack{
                   Button("Feed Tamagotchi meal", action:{ tamagotchi.feedmeal()})
                       .disabled(fullIsTrue)
                       
               }
               Button("Feed Tamagotchi snack", action:{ tamagotchi.feedsnack()})
               .disabled(fullIsTrue)
               
               Button("Play game", action:{ tamagotchi.playGame()})
               .disabled(maxHappiness)
               
               Button("Grow old", action:{ tamagotchi.growOld()})
               
               Button("Get ill", action:{ tamagotchi.getIll()})
               Button("Give medicine", action:{ tamagotchi.giveMedicine()})
            
       }
     }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

