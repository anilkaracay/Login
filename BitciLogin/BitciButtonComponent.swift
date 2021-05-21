//
//  BitciButtonComponent.swift
//  BitciLogin
//
//  Created by Macbook Air on 20.05.2021.
//

import SwiftUI

struct BitciButtonComponent: View {
    var text : String
    var onPress : ()->Void
    var body: some View {
        VStack{
            Button(action: onPress, label: {
                Text(text)
            })
        }
    }
}


