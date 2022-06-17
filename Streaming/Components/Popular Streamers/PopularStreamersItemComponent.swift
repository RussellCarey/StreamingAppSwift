//
//  PopularStreamersItemComponent.swift
//  Streaming
//
//  Created by Russell Carey on 16/06/2022.
//

import SwiftUI

struct PopularStreamersItemComponent: View {
    var body: some View {
        HStack {
            // User Image
            VStack {
                Image("esports1")
                    .resizable()
                    .clipShape(Circle())
                    .frame(maxWidth: 40, maxHeight: 40, alignment: .center)
                    .overlay(Circle().stroke(Color("ColorGreen"), lineWidth: 2))
                ZStack {
                    Circle()
                        .fill(Color("ColorGreen"))
                        .frame(width: 20, height: 20, alignment: .leading)
                    Image(systemName: "checkmark")
                        .font(.system(size: 10, weight: .bold))
                }
                .padding(.top, -25)
                .padding(.trailing, -20)
            }
            
            VStack(alignment: .leading) {
                Text("auromplay")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorWhite"))
                
                Text("9.7m followers")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ColorGrey"))
            }
        }
        .padding(15)
        .background(Color("ColorLightPurple"))
        .cornerRadius(20)
   

    }
}

struct PopularStreamersItemComponent_Previews: PreviewProvider {
    static var previews: some View {
        PopularStreamersItemComponent()
    }
}
