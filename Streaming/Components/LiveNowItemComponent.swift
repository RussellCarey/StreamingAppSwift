//
//  LiveNowItemComponent.swift
//  Streaming
//
//  Created by Russell Carey on 16/06/2022.
//

import SwiftUI

struct LiveNowItemComponent: View {
    var body: some View {
        ZStack(alignment: .leading) {
            //MARK: - BACKGROUND
            // Background Image
            Image("csgo")
                .resizable()
                .cornerRadius(20)
            
            // Gardient
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.9), Color.black.opacity(0),Color.black.opacity(0), Color.black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                )
            
            VStack {
                //MARK: - TOP BANNER
                HStack {
                    // Logo
                    Image("esports1")
                        .resizable()
                        .clipShape(Circle())
                        .frame(maxWidth: 18, maxHeight: 18, alignment: .center)
                    
                    // Username
                    Text("Esl_csgo")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color("ColorWhite"))
                
                Spacer()
                
                // MARK: - BOTTOM
                VStack {
                    // Viewers
                    HStack {
                        HStack {
                            Text("55.5k Viewers")
                                .font(.caption)
                                .fontWeight(.semibold)
                                .padding(.vertical, 6)
                                .padding(.horizontal, 15)
                            
                        }//: HSTACK
                        .background(Color("ColorGreen"))
                        .foregroundColor(Color("ColorDarkPurple"))
                        .cornerRadius(40)
                        Spacer()
                    }//: HSTACK
                    
                    
                    // Title
                    Text("ESL Pro Leauge")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorWhite"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    // Subtitle
                    Text("ESL Pro Leauge")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("ColorGrey"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(15)
            
        }//: ZSTACK
        .frame(width: 190, height: 230, alignment: .leading)
        .cornerRadius(20)
        .padding(.trailing, 10)
    }
}

struct LiveNowItemComponent_Previews: PreviewProvider {
    static var previews: some View {
        LiveNowItemComponent()
    }
}
