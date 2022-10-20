//
//  SwiftUIView.swift
//  ios-neumorphism-sample
//
//  Created by Tarik Yasar on 20.10.2022.
//

import SwiftUI
import ios_neumorphism

struct SwiftUIView: View {
    @State var alignment: Alignment = .leading
    @State var isOn: Bool = false
    @State var isPressed: Bool = false
    var height: CGFloat = 80
    var width: CGFloat = 200
    var activatedColor: Color = Color.green
    var isDarkMode: Bool = false
    
    var body: some View {
        VStack {
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
