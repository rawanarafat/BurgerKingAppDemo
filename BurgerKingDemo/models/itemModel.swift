//
//  itemModel.swift
//  BurgerKingDemo
//
//  Created by rawan arafat on 2021-07-29.
//

import Foundation
struct itemModel: Identifiable {
    let id: String
    let title: String
    let price: Double
    let imageName: String
    
    init(id: String = UUID().uuidString, title: String, price: Double, imageName: String) {
        self.id = id
        self.title = title
        self.price = price
        self.imageName = imageName
        
    }
    
   
}
