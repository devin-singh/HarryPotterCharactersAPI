//
//  StaticGroupsTableViewController.swift
//  HarryPotterCharacters
//
//  Created by Devin Singh on 1/22/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit

class StaticGroupsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let _ = CharacterController.shared.characters
        
    }
    
    // MARK: - Table view data source
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toPhoenix" {
            guard let destintionVC = segue.destination as? OrderOfThePheonixTableViewController else {return}
            
            let charactersToSend = CharacterController.shared.onlyOrderOfPhoenix()
            destintionVC.orderOfPhoenixCharacters = charactersToSend
            
        } else if segue.identifier == "toDumbledoreVC" {
            
            guard let destinationVC = segue.destination as? DumbledoresArmyTableViewController else { return }
            
            let charactersToSend = CharacterController.shared.onlyDumbledoresArmy()
            
            destinationVC.dumbledoresArmyCharacters = charactersToSend
        } else if segue.identifier == "toDeathEaterVC" {
            
            guard let destinationVC = segue.destination as? DeathEatersTableViewController else { return }
            
            let charactersToSend = CharacterController.shared.onlyDeathEater()
            destinationVC.deathEaters = charactersToSend
        } else if segue.identifier == "toMinistryVC" {
            guard let destinationVC = segue.destination as? MinistryOfMagicTableViewController else { return }
            
            let charactersToSend = CharacterController.shared.onlyMinistryOfMagic()
            destinationVC.ministryOfMagic = charactersToSend
        }
    }
}
