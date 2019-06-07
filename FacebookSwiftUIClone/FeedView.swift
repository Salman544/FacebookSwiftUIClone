//
//  FeedView.swift
//  FacebookSwiftUIClone
//
//  Created by Muhammad Salman Zafar on 07/06/2019.
//  Copyright © 2019 Salman Zafar. All rights reserved.
//

import SwiftUI

struct FeedView : View {
    let name: String
    
    var body: some View {
        
        VStack {
            FeedViewTitle()
            Image(name)
                .resizable()
                .scaledToFit()
                .padding(.trailing, -20)
                .padding(.leading, -20)
            
            FeedViewDetail()
            FeedBottomView()
        }.frame(maxHeight: 1500)

    }
}

struct FeedViewTitle: View {
    var body: some View {
        HStack {
            CircleImage(name: "billgate", size: 50, lineWidth: 2, padding: -2, color: .init(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.2))
            
            VStack(alignment: .leading) {
                
                Text("Unsplash")
                    .font(.custom("Avenir-Book", size: 20))
                    .foregroundColor(.black)
                
                Text("2 hrs ago")
                    .font(.custom("Avenir-Book", size: 17))
                    .foregroundColor(.gray)
                
            }
            
            Spacer()
            
            Image(systemName: "ellipsis")
                .foregroundColor(.black)
            
        }
    }
}

struct FeedViewDetail: View {
    var body: some View {
        HStack {
            Image("wow")
            Text("19")
                .font(.custom("Avenir-Book", size: 17))
                .foregroundColor(.gray)
            
            Spacer()
            
            Text("1 Comment")
                .font(.custom("Avenir-Book", size: 17))
                .foregroundColor(.gray)
            
            Text("3 Shares")
                .font(.custom("Avenir-Book", size: 17))
                .foregroundColor(.gray)
        }
    }
}

struct FeedBottomView: View {
    
    var items = ["Like", "Comment", "Share"]
    
    var body: some View {
        HStack(alignment: .center) {
            
            ForEach(items.identified(by: \.self)) {
                Image($0)
                Text($0)
                    .font(.custom("Avenir-Medium", size: 17.5))
                
                if $0 != "Share" { Spacer() }
            }
            
        }.padding(EdgeInsets(top: 5, leading: 20, bottom: 0, trailing: 20))
        
    }
}



#if DEBUG
struct FeedView_Previews : PreviewProvider {
    static var previews: some View {
        FeedView(name: "bridge")
    }
}
#endif
