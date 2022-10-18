//
//  LightNeumorphicViews.swift
//  ios-neumorphism-sample
//
//  Created by Tarik Yasar on 18.10.2022.
//

import SwiftUI
import ios_neumorphism

struct LightNeumorphicViews: View {
    @Binding var isOn: Bool
    @Binding var weather: String
    
    var body: some View {
        ScrollView {
            VStack {
                Spacer()
                
                ZStack {
                    NeumorphicSurface(
                        surfaceShape: RoundedRectangle(cornerRadius: 10),
                        isDarkModeEnabled: false,
                        width: .infinity,
                        height: 70
                    )
                    .padding(.horizontal, 100)
                    
                    Text("Light Mode")
                        .foregroundColor(.gray)
                        .font(.system(size: 28))
                        .padding(.vertical, 80)
                }
                
                Spacer()
                    
                ZStack {
                    NeumorphicSurface(
                        surfaceShape: RoundedRectangle(cornerRadius: 40),
                        isDarkModeEnabled: false
                    )
                    
                    VStack {
                        Spacer()
                        
                        Text("12°C")
                            .font(.system(size: 48))
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        ZStack {
                            NeumorphicSurface(
                                surfaceShape: Circle(),
                                isDarkModeEnabled: false,
                                width: 100,
                                height: 100
                            )
                            
                            Image(systemName: weather)
                                .font(.system(size: 60))
                                .foregroundColor(.gray)
                                .frame(width: 20, height: 20)
                        }
                       
                        Spacer()
                    }
                }
                .padding(.bottom, 50)
                
                Spacer()
                
                HStack {
                    CircularNeumorphicButton(
                        action: {
                            weather = "sun.max"
                        },
                        label: Image(systemName: "sun.max")
                                .font(.system(size: 24))
                                .foregroundColor(.gray),
                        isDarkModeEnabled: false
                    )
                    
                    Spacer()
                    
                    RoundedNeumorphicButton(
                        action: {
                            weather = "cloud.drizzle.fill"
                        },
                        label: Image(systemName: "cloud.drizzle.fill")
                                .font(.system(size: 24))
                                .foregroundColor(.gray),
                        isDarkModeEnabled: false
                    )
                    
                    Spacer()
                    
                    CircularNeumorphicButton(
                        action: {
                            weather = "moon.fill"
                        },
                        label: Image(systemName: "moon.fill")
                                .font(.system(size: 24))
                                .foregroundColor(.gray),
                        isDarkModeEnabled: false
                    )
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 40)
                
                NeumorphicToggleSwitch(isOn: $isOn, isDarkMode: false)
                    .frame(width: .zero, alignment: .center)
                    .toggleStyle(SwitchToggleStyle(tint: Color.teal))
             
                Spacer()
            }
        }
    }
}