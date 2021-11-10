//
//  BurgerKingDemoApp.swift
//  BurgerKingDemo
//
//  Created by rawan arafat on 2021-07-29.
//

import SwiftUI

@main
struct BurgerKingDemoApp: App {
    @StateObject var ListViewModel: listViewModel = listViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                appView()

            }.environmentObject(ListViewModel)
        }
    }
}
