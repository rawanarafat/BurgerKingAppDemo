//
//  ingredientsView.swift
//  BurgerKingDemo
//
//  Created by rawan arafat on 2021-07-29.
//

import SwiftUI

struct ingredientsView: View {
    @State var isHidden: Bool = false
    @State var image1 = "3"
    @State var image2 = "images"
    @State var image3 = "Unknown2"
    @State var image4 = "55"
    var body: some View {
        HStack{
           
           Image(image1)
            .resizable()
            .frame(width: 100, height: 90)
            .overlay(
                Text("X")
                    .foregroundColor(.black)
                    .background( Circle().fill(Color.red)
                                    .frame(width: 30, height:30))
                    .offset(x: 20, y: -30)
                    .onTapGesture {
                        
                    }
               
              
            )
            
            Spacer()
            Image(image2)
             .resizable()
             .frame(width: 90, height: 70)
             .overlay(
                 Text("X")
                     .foregroundColor(.black)
                     .background( Circle().fill(Color.red)
                                     .frame(width: 30, height:30))
                     .offset(x: 20, y: -30)
                
               
             )
            Spacer()
            Image(image3)
             .resizable()
             .frame(width: 90, height: 70)
             .overlay(
                 Text("X")
                     .foregroundColor(.black)
                     .background( Circle().fill(Color.red)
                                     .frame(width: 30, height:30))
                     .offset(x: 20, y: -30)
                
               
             )
            Spacer()
            Image(image4)
             .resizable()
             .frame(width: 70, height: 70)
             .overlay(
                 Text("X")
                     .foregroundColor(.black)
                     .background( Circle().fill(Color.red)
                                     .frame(width: 30, height:30))
                     .offset(x: 20, y: -30)
                
               
             )
            Spacer()
            
            
        }
        .padding()
        
    }
}



struct ingredientsView_Previews: PreviewProvider {
    static var previews: some View {
        ingredientsView()
            .previewLayout(.sizeThatFits)
    }
}
