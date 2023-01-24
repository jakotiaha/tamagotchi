//
//  TamagotchiInfo.swift
//  Tamagotchi
//
//  Created by Jakotiah, Akshat (DWBA) on 24/01/2023.
//

import Foundation

struct Tamagotchi {
    var hunger: Int
    var awake: Bool
    var discipline: Int
    var age: Int
    var full: Bool
    var happiness: Int
    
    func displayStats()-> String {
        return """
         Hunger: \(hunger)/5
         Awake: \(awake)
         Discipline: \(discipline)/5
         Age: \(age)
         Happiness:\(happiness)/5

         """
    }
    
    mutating func feedmeal(){
        if self.hunger != 0{
            self.hunger -= 2
            }
        }
    
    mutating func feedsnack(){
        if self.hunger != 0{
            self.hunger -= 1
            }
        }
    
    func playGame() {
        
    }

}
