//
//  ContentView.swift
//  Modals
//
//  Created by Payam on 1/15/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresent : Bool = false
    var body: some View {
        
        Button("Show Modal"){
            isPresent.toggle()
        }.sheet(isPresented: $isPresent){
            Text("Hello Modal")
        }
            
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
