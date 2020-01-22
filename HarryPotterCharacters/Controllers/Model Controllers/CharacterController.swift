//
//  CharacterController.swift
//  HarryPotterCharacters
//
//  Created by Devin Singh on 1/22/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import Foundation

class CharacterController {
    
    static let shared = CharacterController()
    
    var characters: [Character] = []
    
    init() {
        // load entries
        // TODO: Initialize the chars array with all chars
        HarryPoterCharactersService.fetchHarryPotterCharacters { (result) in
            switch result {
            case .success(let characterArray):
                CharacterController.shared.characters = characterArray
            case .failure(let error):
                print(error, error.localizedDescription)
                fatalError()
            }
        }
    }
    
    static func onlyMinistryOfMagic() -> [Character] {
        var ministryChars = CharacterController.shared.characters
        for character in ministryChars {
            if !character.ministryOfMagic {
                if let index = ministryChars.firstIndex(of: character) {
                    ministryChars.remove(at: index)
                }
            }
        }
        return ministryChars
    }
    
    static func onlyOrderOfPhoenix() -> [Character] {
        var orderOfPhoenixChars = CharacterController.shared.characters
        for character in orderOfPhoenixChars {
            if !character.orderOfThePhoenix{
                if let index = orderOfPhoenixChars.firstIndex(of: character) {
                    orderOfPhoenixChars.remove(at: index)
                }
            }
        }
        return orderOfPhoenixChars
    }
    
    static func onlyDumbledoresArmy() -> [Character] {
        var onlyDumbledoresArmyChars = CharacterController.shared.characters
        for character in onlyDumbledoresArmyChars {
            if !character.dumbledoresArmy {
                if let index = onlyDumbledoresArmyChars.firstIndex(of: character) {
                    onlyDumbledoresArmyChars.remove(at: index)
                }
            }
        }
        return onlyDumbledoresArmyChars
    }
    
    static func onlyDeathEater() -> [Character] {
        var onlyDeathEaterChars = CharacterController.shared.characters
        for character in onlyDeathEaterChars {
            if !character.deathEater {
                if let index = onlyDeathEaterChars.firstIndex(of: character) {
                    onlyDeathEaterChars.remove(at: index)
                }
            }
        }
        return onlyDeathEaterChars
    }
    
    
}
