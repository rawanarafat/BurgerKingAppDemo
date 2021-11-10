//
//  ContentView.swift
//  BurgerKingDemo
//
//  Created by rawan arafat on 2021-07-29.
//

import SwiftUI

struct ContentView: View {
    //var item: itemModel
    @EnvironmentObject var ListViewModel: listViewModel
    let item: itemModel
    var body: some View {
        VStack{
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 300, maxHeight: 250)
            Text(item.title)
                .padding()
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
            Text("$\(String(item.price))")
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(Color(#colorLiteral(red: 0.3607843137, green: 0.5725490196, blue: 0.2196078431, alpha: 1)))
                .bold()
            customStepper()
                .padding()
            ingredientsView()
            
                
            Spacer()
        }
        
        .navigationBarItems(leading: Image(systemName: "cart").resizable().frame(width: 33, height: 32).padding(.leading).foregroundColor(.secondary), trailing: Image(systemName: "house").resizable().frame(width: 35, height: 32).padding(.trailing).foregroundColor(.secondary))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(item: itemModel(title: "Double Whooper Burger", price: 3.99, imageName: "Unknown"))
            
        }
        .environmentObject(listViewModel())
    }
}
