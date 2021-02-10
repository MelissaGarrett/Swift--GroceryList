//
//  CategoriesTableViewController.swift
//  GroceryList
//
//  Created by Melissa  Garrett on 2/2/21.
//

import UIKit

class CategoriesTableViewController: UITableViewController {
    
    @IBOutlet var addButtons: [UIButton]!
    
    @IBOutlet weak var showListButton: UIButton!
    @IBOutlet weak var deleteListButton: UIButton!
    
    var storeName: String!
    var stores = [StoreModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = storeName
        
        designButtons()
    }
    
    func designButtons() {
        
        showListButton.layer.cornerRadius = 5
        showListButton.layer.borderWidth = 2
        showListButton.layer.borderColor = UIColor.black.cgColor
        showListButton.backgroundColor = .yellow
        
        deleteListButton.layer.cornerRadius = 5
        deleteListButton.layer.borderWidth = 2
        deleteListButton.layer.borderColor = UIColor.black.cgColor
        deleteListButton.backgroundColor = .red
    }
    
    @IBAction func showListButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func deleteListButtonTapped(_ sender: Any) {
        
    }
}
