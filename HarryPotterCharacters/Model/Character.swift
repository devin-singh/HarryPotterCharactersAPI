//
//  Character.swift
//  HarryPotterCharacters
//
//  Created by Devin Singh on 1/22/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import Foundation

class TopLevelCharacterObject: Codable {
    let characters: [Character]
    
    init(characters: [Character]) {
        self.characters = characters
    }
}

class Character: Codable {
    let _id: String
    let name: String
    let house: String
    let ministryOfMagic: Bool
    let orderOfThePhoenix: Bool
    let dumbledoresArmy: Bool
    let deathEater: Bool
    
    init(_id: String, name: String, house: String, ministryOfMagic: Bool, orderOfThePhoenix: Bool, dumbledoresArmy: Bool, deathEater: Bool) {
        self._id = _id
        self.name = name
        self.house = house
        self.ministryOfMagic = ministryOfMagic
        self.orderOfThePhoenix = orderOfThePhoenix
        self.dumbledoresArmy = dumbledoresArmy
        self.deathEater = deathEater
    }
}

extension Character: Equatable {
    static func == (lhs: Character, rhs: Character) -> Bool {
        return lhs._id == rhs._id
    }
        
}
