//
//  CircleImage.swift
//  FacebookSwiftUIClone
//
//  Created by Muhammad Salman Zafar on 07/06/2019.
//  Copyright © 2019 Salman Zafar. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    
    let name: String
    let size: Int
    let lineWidth: Length
    let padding: Length
    let color: Color
    
    var body: some View {
        ImageStore.shared.image(name: name, size: size)
            .clipShape(Circle())
            .overlay(Circle().stroke(color, lineWidth: lineWidth)
                .padding(padding)
                
        )
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(name: "billgate", size: 60, lineWidth: 4, padding: -4, color: .blue)
        
    }
}
#endif
