//
//  StoreModel.swift
//  GroceryList
//
//  Created by Melissa  Garrett on 12/3/20.
//

import Foundation

class StoreModel : Codable {
    var storeName: String
    var categories: CategoriesModel
    var totalItemCount: Int
    
    init(storeName: String) {
        self.storeName = storeName
        self.categories = CategoriesModel()
        self.totalItemCount = 0
    }
}
