//
//  BitciTextFieldComponent.swift
//  BitciLogin
//
//  Created by Macbook Air on 20.05.2021.
//

import SwiftUI

struct BitciTextFieldComponent: View {
    @Binding  var value : String
    var label : String? = nil
    var text : String
    var icon : String? = nil
    var body: some View {
        VStack(alignment:.leading){
            if label != nil{
                Text(label!).padding(.horizontal)
            }
            ZStack(alignment:.trailing){
            TextField(text,text:$value).padding().border(Color.gray, width: 1).padding(.horizontal)
            if icon != nil {
                Image(systemName: icon!).padding(.horizontal,30)
            }
            }}
        
    }
}



struct BitciTextFieldComponent_Previews : PreviewProvider{
    @State private var inputValue = ""
    static var previews: some View{
        BitciTextFieldComponent(value: self.init().$inputValue, label: "Telefon", text: "+90")
    }
}
