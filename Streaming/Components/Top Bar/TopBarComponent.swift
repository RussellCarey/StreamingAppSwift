//
//  TopBarComponent.swift
//  Streaming
//
//  Created by Russell Carey on 18/06/2022.
//

import SwiftUI

struct TopBarComponent: View {
    var body: some View {
        HStack {
            Image(systemName: "menubar.rectangle")
                .foregroundColor(Color("ColorWhite"))
                .font(.system(size: 20, weight: .bold))
                      
            Spacer()
            
            Image(systemName: "menubar.rectangle")
                .foregroundColor(Color("ColorWhite"))
                .font(.system(size: 20, weight: .bold))
            
        }
        .padding(.bottom, 10)
    }
}

struct TopBarComponent_Previews: PreviewProvider {
    static var previews: some View {
        TopBarComponent()
    }
}
