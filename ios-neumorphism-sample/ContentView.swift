//
//  ContentView.swift
//  ios-neumorphism-sample
//
//  Created by Tarik Yasar on 18.10.2022.
//

import SwiftUI
import ios_neumorphism

struct ContentView: View {
    @State var weather = "cloud.drizzle.fill"
    @State var isOn = false
    
    var body: some View {
        TabView {
            ZStack {
                Color.darkEnd
                
                DarkNeumorphicViews(
                    isOn: $isOn,
                    weather: $weather
                )
            }
            .ignoresSafeArea()
            
            
            ZStack {
                Color.offWhite
                
                LightNeumorphicViews(
                    isOn: $isOn,
                    weather: $weather
                )
            }
            .ignoresSafeArea()
            
        }
        
        .tabViewStyle(.page)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
