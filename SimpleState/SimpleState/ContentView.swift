//
//  ContentView.swift
//  SimpleState
//
//  Created by Payam on 12/25/20.
//

import SwiftUI

struct ContentView: View {
    @State var name : String = "Payam"
    var body: some View {
        VStack{
            
            Text(name).font(.largeTitle)
            
            Button(action:{
                self.name = "John"
            } ) {
              Text("Change Me")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
