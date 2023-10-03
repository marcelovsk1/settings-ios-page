//
//  ContentView.swift
//  Settings
//
//  Created by Marcelo Amaral Alves on 2023-10-02.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchTerm = ""
    
    var body: some View {
        
        NavigationStack {
            
            Form {
                
                Section {
                    
                    HStack {
                        Image("IMG_0888")
                            .resizable()
                            .frame(width: 60, height: 65)
                            .clipShape(Circle())
                        
                        Text("  Marcelo")
                            .font(.title3)
                    
                    }
                    
                    HStack {
                        Text("Your iPhone can't be backed up")
                            .font(.callout)
                        Spacer()
                            Image(systemName: "1.circle.fill")
                            .foregroundColor(.red)
                            .font(.title3)
                        
                    }
                }
                
                Section {
                    
                    HStack{
                        Image(systemName: "airplane")
                            .font(.title2)
                        Text("Airplane Mode")
                        Toggle(isOn: /*@PLACEHOLDER=Is On@*/.constant(false)) {
                        }
                    }
                    
                    HStack {
                        Image(systemName: "wifi")
                            .font(.title2)
                        Text("Wi-Fi")
                        
                        Spacer()
                        Text("Apto-105")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        Image(systemName: "shuffle")
                            .font(.title2)
                        Text("Bluetooth")
                        
                        Spacer()
                        Text("Not Connected")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        Image(systemName: "cellularbars")
                            .font(.title2)
                        Text("Cellular")
                        
                        Spacer()
                        Text("Off")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        Image(systemName: "wifi.router.fill")
                            .font(.title2)
                        Text("Personal Hotspot")
                        
                        Spacer()
                        Text("Off")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        Image(systemName: "globe")
                            .font(.title2)
                        Text("VPN")
                        
                        Spacer()
                        Toggle(isOn: /*@PLACEHOLDER=Is On@*/.constant(true)) {
                        }
                    }
                    
                }
                Section {
                    
                    HStack {
                        Image(systemName: "bell.square.fill")
                            .font(.title2)
                        Text("Notifications")
                    }
                    
                    HStack {
                        Image(systemName: "beats.earphones")
                            .font(.title2)
                        Text("Sounds & Haptics")
                    }
                    
                    HStack {
                        Image(systemName: "moon.circle")
                            .font(.title2)
                        Text("Focus")
                    }
                    
                }
                
            }
            .navigationTitle("Settings")
            .searchable(text: $searchTerm, prompt: "Search")
            
        }
        
    }
}

#Preview {
    ContentView()
}
