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
    var age: Int
    var full: Bool
    var happiness: Int
    var droppings: Bool
    var health: Int
    var bathroomNeeded: Int
    
    func displayStats()-> String {
        return """
         Hunger: \(hunger)/10
         Awake: \(awake)
         Age: \(age)
         Happiness:\(happiness)/10
         Health: \(health)/10
         Bathroom Needed: \(bathroomNeeded)/10

         """
    }
    
    mutating func feedmeal(){
        if self.hunger > 1{
            self.hunger -= 2
            }
        }
    
    mutating func feedsnack(){
        if self.hunger != 0{
            self.hunger -= 1
            }
        }
    
    mutating func playGame(){
        if self.happiness != 10{
            self.happiness += 1
        }
        
     }
    
    mutating func growOld(){
        if self.age != 25{
            self.age += 1
        }
        
    }
        
    mutating func bathroomAndClean(){
            if self.bathroomNeeded != 10{
                self.bathroomNeeded += 1
                if self.bathroomNeeded == 10{
                        self.droppings = true
            
                
        }
        
     }
    
    }
    
    mutating func getIll(){
        if self.health > 0{
            self.health -= 1
            }
        if self.happiness > 0{
            self.happiness -= 1
        }
    
    }
    
    mutating func giveMedicine(){
        if self.health < 10{
            self.health += 1
        }
        if self.happiness < 10{
            self.happiness += 1
        }
    }

}
