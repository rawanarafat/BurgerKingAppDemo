//
//  burgerLIstView.swift
//  BurgerKingDemo
//
//  Created by rawan arafat on 2021-07-30.
//

import SwiftUI

struct burgerLIstView: View {
    @EnvironmentObject var ListViewModel: listViewModel
    var body: some View {
        
              ScrollView(.horizontal){
                
                    HStack{
                        ForEach(ListViewModel.items) { items in
                            NavigationLink(
                                destination: ContentView(ListViewModel: _ListViewModel, item: itemModel(title: items.title, price: items.price, imageName: items.imageName)),
                                label: {
                                    VStack {
                                       Image(items.imageName)
                                           .resizable()
                                           .scaledToFit()
                                           .frame(maxWidth: 200, maxHeight: 200)
                                           .padding(.horizontal)
                                       Text(items.title)
                                           .font(.system(size: 20, weight: .bold))
                                           .foregroundColor(.secondary)
                                           .bold()
                                           .padding(.bottom)
                                           .padding(.horizontal)
                                           
                                       
                                       Text(String(items.price))
                                           .font(.system(size: 35, weight: .bold))
                                           .foregroundColor(Color(#colorLiteral(red: 0.3607843137, green: 0.5725490196, blue: 0.2196078431, alpha: 1)))
                                           .bold()
                                           .padding(.bottom)
                                           .padding(.horizontal)
                                       
                                   }.background(
                                       LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.8509803922, green: 0.7411764706, blue: 0.5921568627, alpha: 0.2789903855))]), startPoint: .top, endPoint: .bottom)
                                           .cornerRadius(25)
                                           .frame(width: 225, height: 300)
                                           
                                   
                                   )
                                })
                       
                        
                    }
                }
                
            }
        
        
    }
}

struct burgerLIstView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            burgerLIstView()
                
        }.environmentObject(listViewModel())
        
        
            
    }
}
