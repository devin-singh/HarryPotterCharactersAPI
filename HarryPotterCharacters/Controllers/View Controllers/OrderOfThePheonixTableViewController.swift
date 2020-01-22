//
//  OrderOfThePheonixTableViewController.swift
//  HarryPotterCharacters
//
//  Created by Devin Singh on 1/22/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit

class OrderOfThePheonixTableViewController: UITableViewController {

    var orderOfPhoenixCharacters: [Character]? {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return orderOfPhoenixCharacters?.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderOfPhoenix", for: indexPath)
        
        guard let character = orderOfPhoenixCharacters?[indexPath.row] else { return UITableViewCell()}
        
        cell.textLabel?.text = character.name
        cell.detailTextLabel?.text = character.house

        return cell
    }
}
