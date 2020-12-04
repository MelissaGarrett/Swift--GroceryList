//
//  ViewController.swift
//  GroceryList
//
//  Created by Melissa  Garrett on 11/2/20.
//

import UIKit

class ViewController: UITableViewController {
    
    var stores = [StoreModel]()
    
    var ac = UIAlertController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "GROCERY LIST"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewStore))
        
        // To remove empty cells from table
        tableView.tableFooterView = UIView()
    }

    @objc func addNewStore() {
        ac = UIAlertController(title: "", message: "Add New Store", preferredStyle: .alert)
        
        ac.addTextField(configurationHandler: { (textField) -> Void in
            textField.placeholder = "Enter store name"
            textField.becomeFirstResponder()
            textField.autocapitalizationType = .words
            
            
            textField.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: .editingChanged)
        })
        
        let saveAction = UIAlertAction(title: "Save", style: .default) {  [unowned self, ac] _ in
            let storeTextField = ac.textFields![0] as UITextField
            
            
            if storeTextField.hasText {
                self.saveNewStore(storeName: storeTextField.text!)
            }
        }
        saveAction.isEnabled = false
        
        // Don't need '[unowned self, ac] here like in "saveAction" because
        // 'self' and 'ac' are not used in the closure
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) {
            _ in
            
        }
        
        ac.addAction(saveAction)
        ac.addAction(cancelAction)
        
        self.present(ac, animated: true)
    }
    
    @objc func textFieldDidChange(textField: UITextField) {
        if textField.text!.count > 0 {
            ac.actions[0].isEnabled = true
        }
    }
        
    func saveNewStore(storeName: String) {
        let store = StoreModel(storeName: storeName)
        stores.append(store)
        
        // save data to disk
        
        tableView.reloadData()
    }
    
    //MARK: Table View Data Source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        stores.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoreCell", for: indexPath)
        
        cell.textLabel?.text = stores[indexPath.row].storeName
        cell.textLabel?.font = UIFont.systemFont(ofSize: 30)
        
        return cell
    }
}

