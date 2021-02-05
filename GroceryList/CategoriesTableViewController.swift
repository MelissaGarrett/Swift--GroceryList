//
//  CategoriesTableViewController.swift
//  GroceryList
//
//  Created by Melissa  Garrett on 2/2/21.
//

import UIKit

class CategoriesTableViewController: UITableViewController {
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var showListBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var deleteListBarButtonItem: UIBarButtonItem!
    
    var storeName: String!
    var stores = [StoreModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = storeName
    }
}
