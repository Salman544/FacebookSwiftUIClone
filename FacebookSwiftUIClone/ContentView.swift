//
//  ContentView.swift
//  FacebookSwiftUIClone
//
//  Created by Muhammad Salman Zafar on 07/06/2019.
//  Copyright © 2019 Salman Zafar. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var items = Array(repeating: "bridge", count: 50)
    
    var body: some View {
        
        List {
            
            Section {
                StatusBarSection()
                    .listRowInsets(.init())
            }
            
            Section {
                StoryView()
            }
            
            Section {
                ForEach(items.identified(by: \.self)) { item in
                    FeedView(name: item)
                }
            }

        }.listRowInsets(.init())
         .listStyle(.grouped)
         .edgesIgnoringSafeArea(.top)
        
        
            


        
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
