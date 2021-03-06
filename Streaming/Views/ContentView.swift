//
//  ContentView.swift
//  Streaming
//
//  Created by Russell Carey on 16/06/2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    private var categories: [String] = ["All", "Esports", "Channels", "Categories", "Themes", "Contact"]
    
    //BODY: - PROPERTIES
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            
            ScrollView(.vertical, showsIndicators: false) {
                TopBarComponent()
                
                //MARK: - TITLE
                VStack(alignment: .leading) {
                    Text("Your Favorite")
                        .foregroundColor(Color("ColorWhite"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    
                    Text("Streams")
                        .foregroundColor(Color("ColorGreen"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }//: VSTACK
                .frame(maxWidth: .infinity, alignment: .leading)
                
                // MARK: - CATEGORIES
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(categories, id: \.self) { cat in
                            CategoryButtonComponent(categoryName: cat)
                        }
                    }//: HSTACK
                    .frame(height: 40)
                }//: SCROLLVIEW
                
                // MARK: - LIVE NOW
                LiveNowComponent()
                
                // MARK: - POPULAR STREAMS
                PopularStreamersComponent()
                
                // MARK: - TOP CATS
                TopCatsComponent()
                
                
                // MARK: - BOTTOM BAR?
            }//: SCROLLVIEW
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 20)
            .background(Color("ColorDarkPurple"))
            
            // Bottom NavBar
            BottomNavBarComponent()
            
        }//: ZSTACK
        .ignoresSafeArea(.all, edges: .bottom)
    }//: BODY
    
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
