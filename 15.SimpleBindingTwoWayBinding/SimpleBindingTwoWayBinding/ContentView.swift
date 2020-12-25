//
//  ContentView.swift
//  SimpleBindingTwoWayBinding
//
//  Created by Payam on 12/25/20.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    
    
    private func printTitle(){
        print(self.name)
    }
    var body: some View {
        
        
        VStack {
            Text(name)
                .padding()
            
            TextField("Please enter", text: $name).padding(12)
            
            Button(action: printTitle) {
                Text("Print")
            }
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
