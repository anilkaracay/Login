//
//  ContentView.swift
//  BitciLogin
//
//  Created by Macbook Air on 20.05.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var inputValue = ""
    var body: some View {
        NavigationView{
            VStack(spacing:20){
            BitciTextFieldComponent(value: self.$inputValue, label:"Telefon", text: "+90")
                BitciTextFieldComponent(value: $inputValue, label: "Şifre", text: "",icon:"eye.fill")
            HStack{
            Spacer()
            Button(action: {print("Şifre")}, label: {
                Text("Şifremi Unuttum").foregroundColor(.gray)
            }).padding(.horizontal)}
                BitciButtonComponent(text: "Giriş Yap", onPress:{}).padding().frame(maxWidth:.infinity).background(RoundedRectangle(cornerRadius: 5)).padding(.horizontal).foregroundColor(.secondary)
                    Text("Veya").foregroundColor(.gray)
                BitciButtonComponent(text: "Kayıt Ol", onPress: {}).padding().frame(maxWidth:.infinity).foregroundColor(.red)
            }.navigationBarTitle(Text("Giriş Yap"),displayMode: .inline)
        }
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
