//
//  StatusBarSection.swift
//  FacebookSwiftUIClone
//
//  Created by Muhammad Salman Zafar on 07/06/2019.
//  Copyright © 2019 Salman Zafar. All rights reserved.
//

import SwiftUI

struct StatusBarSection: View {
    
    var body: some View {
        VStack {
            
            Rectangle()
                .size(CGSize(width: 1200, height: 50))
                .padding(.top, -40)
                .foregroundColor(Color(red: 59/255, green: 89/255, blue: 152/255))
            
            
            StatusBar()
            //.padding(.top, -8)
            
            PostSection()
            
        }
    }
    
}

struct StatusBar: View {
    
    @State var searchText = ""
    var text = "Search"
    
    var body: some View {
        
        HStack {
            
            
            Image(systemName: "camera.fill")
                .font(.title)
                .foregroundColor(.white)
            
            
            TextField($searchText, placeholder: Text(text))
                .frame(width: 290, height: 38)
                .padding(.leading, 20)
                .background(Color(red: 31/255, green: 55/255, blue: 106/255))
                .cornerRadius(15)
                .font(.custom("Avenir-Book", size: 20))
            
            Spacer()
            
            Image(systemName: "cloud.fill")
                .font(.title)
                .foregroundColor(.white)
            
            }.frame(height: 55).padding(.leading, 15)
             .padding(.trailing, 15)
            .background(Color(red: 59/255, green: 89/255, blue: 152/255))
    }
    
}

struct PostSection: View {
    
    @State var postText = ""
    
    var body: some View {
        
        VStack {
            HStack {
                
                ImageStore.shared.image(name: "billgate", size: 60)
                    .cornerRadius(30)
                
                TextField($postText, placeholder: Text("What's on your mind?"))
                    .foregroundColor(.black)
                    .font(.custom("Avenir-Book", size: 21.5))
                
            }
            
            HStack(alignment: .center) {
                Image(systemName: "video.fill")
                    .foregroundColor(Color.red)
                    .font(.system(size: 17))
                
                Text("Live")
                    .font(.custom("Avenir-Book", size: 17))
                
                Spacer()
                
                Image(systemName: "photo.fill")
                    .foregroundColor(Color.green)
                    .font(.system(size: 17))
                
                Text("Photo")
                    .font(.custom("Avenir-Book", size: 17))
                
                Spacer()
                
                Image(systemName: "location.fill")
                    .foregroundColor(Color.purple)
                    .font(.system(size: 17))
                
                Text("Location")
                    .font(.custom("Avenir-Book", size: 17))
                }.padding(EdgeInsets(top: 5, leading: 20, bottom: 0, trailing: 20))
            
            }.frame(height: 55)
            .padding(EdgeInsets(top: 20, leading: 5, bottom: 25, trailing: 0))
            .background(Color.white)
        
        
        
        
    }
}

#if DEBUG
struct StatusSection_Previews : PreviewProvider {
    static var previews: some View {
        StatusBarSection()
    }
}
#endif
