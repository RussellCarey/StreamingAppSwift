//
//  CategoryButtonComponent.swift
//  Streaming
//
//  Created by Russell Carey on 16/06/2022.
//

import SwiftUI

struct CategoryButtonComponent: View {
    //MARK: - PROPERTIES
    var categoryName: String
    @State private var isPressed: Bool = false
    
  
    //MARK: - BODY
    var body: some View {
        
        Button{
            isPressed = true
        } label: {
            Text(categoryName)
                .font(.callout)
                .fontWeight(.bold)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .background(Color(isPressed ?  "ColorGreen" : "ColorLightPurple"))
        .cornerRadius(20)
        .foregroundColor(Color(isPressed ? "ColorDarkPurple" : "ColorWhite"))
    }
}

//MARK: - PREVIEW
struct CategoryButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButtonComponent(categoryName: "Channels")
    }
}
