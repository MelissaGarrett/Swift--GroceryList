//
//  CategoriesTableViewController.swift
//  GroceryList
//
//  Created by Melissa  Garrett on 2/2/21.
//

import UIKit

class CategoriesTableViewController: UITableViewController {
    var storeName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = storeName
        
        
    }
}
