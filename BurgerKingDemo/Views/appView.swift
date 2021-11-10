//
//  appView.swift
//  BurgerKingDemo
//
//  Created by rawan arafat on 2021-07-29.
//

import SwiftUI

struct appView: View {
    @EnvironmentObject var ListViewModel: listViewModel
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.8509803922, green: 0.7411764706, blue: 0.5921568627, alpha: 1)).ignoresSafeArea()
                .frame(height: 300)
                .offset(y: -270)
            HStack {
                VStack(alignment: .leading) {
                    Text("NEW!")
                        .foregroundColor(Color(#colorLiteral(red: 0.8119604073, green: 0.1568627506, blue: 0.07450980693, alpha: 1)))
                        .font(.system(size: 23, weight: .heavy))
                        .frame(alignment: .leading)
                        .offset(x: 7, y: -270)
                        
                    
                    Text("Roadhouse King")
                        .foregroundColor(Color(#colorLiteral(red: 0.4564275523, green: 0.3601407633, blue: 0.3076789752, alpha: 1)))
                        .font(.system(size: 25, weight: .heavy))
                        .frame(alignment: .leading)
                        .offset(x: 7, y: -260)
                        .padding(.trailing)
                        
                }
                Spacer()
                
                Image("Roadhouse")
                    .resizable()
                    .frame(maxWidth: 500, maxHeight: 300)
                    .offset(x: 50, y: -220)
            }
            Text("Most Popular")
                .font(.system(size: 23, weight: .bold))
                .font(.title2)
                .foregroundColor(.secondary)
                .offset(x: -110, y: -75)
            Spacer()
            
            burgerLIstView().offset(y: 100).padding()
              
            
                
            Spacer()
            
        }
    }
}

struct appView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            appView()
        }.environmentObject(listViewModel())
        
    }
}
