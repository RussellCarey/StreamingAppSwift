//
//  TopCatsItemComponent.swift
//  Streaming
//
//  Created by Russell Carey on 16/06/2022.
//

import SwiftUI

struct TopCatsItemComponent: View {
    var body: some View {
        ZStack {
            Image("esports1")
                .resizable()
            
            VStack {
                
            }
        }
        .frame(width: 100, height: 100, alignment: .leading)
        .cornerRadius(20)
        .padding(.trailing, 10)
    }
}

struct TopCatsItemComponent_Previews: PreviewProvider {
    static var previews: some View {
        TopCatsItemComponent()
    }
}
