//
//  ContentView.swift
//  SettingForm
//
//  Created by Payam on 1/14/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isOnButton: Bool = false
    @State private var optionTwo: Bool = false
    @State private var sliderOption: CGFloat = CGFloat.zero
    
    var body: some View {
        NavigationView {
            Form{
                
                Section(header: Text("This is a header Text This is a header Text This is a header Text This is a header Text This is a header Text This is a header Text").padding(5).lineLimit(nil), content: {
                    Toggle(isOn: self.$isOnButton, label: {
                        Text("Scheduled")
                    })
                })
                
                
                HStack {
                    
                    VStack {
                        Text("From")
                        Text("To")
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: Text("Destination")){
                        VStack {
                            Text("Sunset").foregroundColor(.blue)
                            Text("Sunrise").foregroundColor(.blue)
                        }
                    }.fixedSize()
                    
                    
                    
                }
                
                Section(header: Text(""), content: {
                    Toggle(isOn: self.$optionTwo, label: {
                        Text("Option Two ")
                    })
                    
                })
                
                Section(header: Text(""), content: {
                    
                    HStack{
                        Text("Left Option")
                        Slider(value: $sliderOption)
                        Text("Right Option")
                    }
                    
                })
                    
                
                
            }
            
        }
        
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
