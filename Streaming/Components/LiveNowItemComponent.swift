//
//  LiveNowItemComponent.swift
//  Streaming
//
//  Created by Russell Carey on 16/06/2022.
//

import SwiftUI

struct LiveNowItemComponent: View {
    var body: some View {
        VStack {
            // Items here
        }
        .frame(width: 170, height: 230, alignment: .center)
        .background( Image("csgo")
            .resizable()
            .aspectRatio(contentMode: .fill))
        .clipped()
        .cornerRadius(20)
    }
}

struct LiveNowItemComponent_Previews: PreviewProvider {
    static var previews: some View {
        LiveNowItemComponent()
    }
}
