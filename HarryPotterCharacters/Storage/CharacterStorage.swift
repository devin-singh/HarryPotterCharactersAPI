//
//  CharacterStorage.swift
//  HarryPotterCharacters
//
//  Created by Devin Singh on 1/22/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import Foundation

class CharacterStorage {
    
    static private let characterFileName = "characters"
    
    static func saveEntries(characters: [Character]) {
        do {
            let data = try JSONEncoder().encode(characters)
            JSONRepository.saveData(data: data, name: characterFileName)
        } catch {
            print(error, error.localizedDescription)
        }
    }
    
    static func loadEntries() -> [Character] {
        
        do {
            guard let data = JSONRepository.loadData(name: characterFileName) else { return [] }
            let entries = try JSONDecoder().decode([Character].self, from: data)
            return entries
        } catch {
            print(error, error.localizedDescription)
            return []
        }
    }
}
