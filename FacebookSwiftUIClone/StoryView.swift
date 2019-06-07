//
//  StoryView.swift
//  FacebookSwiftUIClone
//
//  Created by Muhammad Salman Zafar on 07/06/2019.
//  Copyright © 2019 Salman Zafar. All rights reserved.
//

import SwiftUI

struct StoryView : View {
    var items = ["torii_gate", "bridge", "harley", "josh-spires", "torii_gate", "bridge", "harley", "josh-spires"]
    var body: some View {
        
        ScrollView(showsHorizontalIndicator: false) {
            HStack {
                ForEach(items.identified(by: \.self)) {
                    StoryViewRow(imageName: $0)
                        .padding(10)
                }
            }

        }.frame(height: 200)
        
    }
}

struct StoryViewRow: View {
    var imageName: String
    var body: some View {
        
        ImageStore.shared.image(name: imageName, size: 180)
            .cornerRadius(20)
            .overlay(TextOverlay())
        
    }
}

struct TextOverlay: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            CircleImage(name: "billgate", size: 60, lineWidth: 4, padding: -4, color: .blue)
            
            Spacer()
            
            Text("Salman Zafar")
            .lineLimit(nil)
            .font(.custom("Avenir-Medium", size: 23.5))
            .foregroundColor(.white)
            .shadow(radius: 2)
            
            
        }.padding(10)
        
    }
}


#if DEBUG
struct StoryView_Previews : PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
#endif
