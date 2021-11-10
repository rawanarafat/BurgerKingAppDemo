//
//  customStepper.swift
//  BurgerKingDemo
//
//  Created by rawan arafat on 2021-07-29.
//

import SwiftUI

struct customStepper: View {
    @State var count: Int = 0
    var body: some View {
        HStack {
            HStack {
                Text(String(count))
                    .frame(alignment: .leading)
                    .font(.system(size: 35))
                    .foregroundColor(.green)
                    .frame(minWidth: 0, maxWidth: 55)
                VStack {
                    Image(systemName: "arrowtriangle.up.fill")
                        .font(.system(size: 13))
                        .padding(.top)
                        .padding(.horizontal)
                        .onTapGesture {
                            if count < 10 {
                                count += 1
                            }
                        }
                    Spacer()
                    Image(systemName: "arrowtriangle.down.fill")
                        .font(.system(size: 13))
                        .padding(.bottom)
                        .onTapGesture {
                            if count > 0 {
                                count -= 1
                            }
                            
                        }
                }
            }.background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
            ).frame(height: 60)
            
            Text("+")
                .frame(width: 20, height: 20)
                .frame(alignment: .leading)
                .font(.system(size: 27))
                .foregroundColor(.green)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    )
                .onTapGesture {
                    if count < 10 {
                        count += 1
                    }
                }
                
           
        }
        
    }
}

struct customStepper_Previews: PreviewProvider {
    static var previews: some View {
        customStepper()
            
            
    }
}
