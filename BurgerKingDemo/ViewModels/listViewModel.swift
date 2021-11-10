//
//  listViewModel.swift
//  BurgerKingDemo
//
//  Created by rawan arafat on 2021-07-29.
//

import Foundation
class listViewModel: ObservableObject {
    
    @Published var items: [itemModel] = []
    
    init() {
        getitems()
    }
    
    func getitems(){
        let newItems = [
            itemModel(title: "Double Whooper Burger", price: 3.99, imageName: "whooper2"),
            itemModel(title: "Roadhouse King", price: 11.99, imageName: "Roadhouse")
        ]
        items.append(contentsOf: newItems)
    }
}
