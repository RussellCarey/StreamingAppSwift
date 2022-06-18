//
//  BottomNavBarComponent.swift
//  Streaming
//
//  Created by Russell Carey on 18/06/2022.
//

import SwiftUI

struct BottomNavBarComponent: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0), Color("ColorDarkPurple")]), startPoint: .top, endPoint: .bottom)
                )
            
            // Buttons should be own components. Learn more about state to control them.
            HStack(alignment: .top) {
                Spacer(minLength: 10)
                
                ZStack {
                    Circle()
                        .fill(Color("ColorGreen"))
                        .frame(width: 55, height: 55, alignment: .leading)
                    Image(systemName: "house")
                        .foregroundColor(Color("ColorDarkPurple"))
                        .font(.system(size: 17, weight: .bold))
                }
                .padding(.top, -25)
                .padding(.trailing, -20)
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color("ColorWhite"))
                    .font(.system(size: 17, weight: .bold))
                
                Spacer()
                
                Image(systemName: "heart")
                    .foregroundColor(Color("ColorWhite"))
                    .font(.system(size: 17, weight: .bold))
                
                Spacer()
                
                Image(systemName: "gearshape")
                    .foregroundColor(Color("ColorWhite"))
                    .font(.system(size: 17, weight: .bold))
                Spacer()
                
            }//: HSTACK
            .padding(.top, 20)
        }//: ZSTACK
        .frame(width: UIScreen.main.bounds.width, height: 100)
    }
}

struct BottomNavBarComponent_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavBarComponent()
    }
}
