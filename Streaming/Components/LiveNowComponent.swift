//
//  LiveNowComponent.swift
//  Streaming
//
//  Created by Russell Carey on 16/06/2022.
//

import SwiftUI

struct LiveNowComponent: View {
    var body: some View {
        VStack {
            HStack {
                //MARK: - Title
                Text("Live Now")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ColorWhite"))
                
                Spacer()
                
                //MARK: - NOTCHES
                HStack {
                    Circle()
                        .fill(Color("ColorGreen"))
                        .frame(width: 4.0, height: 4.0, alignment: .leading)
                    
                    ForEach(0...1, id: \.self) { notch in
                        Circle()
                            .fill(Color("ColorGrey"))
                            .frame(width: 4.0, height: 4.0, alignment: .leading)
                    }
                }//: HSTACK
                .padding(.trailing, 15)
            }//: HSTACK
            
            //MARK: - LIVE VIEW
            ScrollView(.horizontal) {
                HStack {
                    // LIVENOWIMAGECOMPONENT
                    LiveNowItemComponent()
                    LiveNowItemComponent()
                    LiveNowItemComponent()
                    LiveNowItemComponent()
                }//: HSTACK
            }//: SCROLLVIEW
            
        }//: VSTACK
        .background(Color("ColorDarkPurple"))
        .padding(.top, 20)
    }
}

struct LiveNowComponent_Previews: PreviewProvider {
    static var previews: some View {
        LiveNowComponent()
    }
}
