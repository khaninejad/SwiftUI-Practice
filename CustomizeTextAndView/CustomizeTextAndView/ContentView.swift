//
//  ContentView.swift
//  CustomizeTextAndView
//
//  Created by Payam on 12/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack{
            Text("First Line")
            Text("Second Line")
        }
        HStack{
            Text("Menu 1")
            Text("Menu 2")
        }
        
        ZStack{
            Text("First Z Book")
            Text("Second Z Book")
        }
        
        VStack{
            Text("First Line")
            Spacer()
            Text("Second Line")
            HStack{
                Text("Menu 1")
                Text("Menu 2")
            }
        }
        
        VStack(alignment: .center){
            Text("First Line")
                .font(.largeTitle)
                .foregroundColor(.green)
            Text("Second Line")
                .font(.title)
                .foregroundColor(.orange)
            HStack{
                Text("Menu 1")
                Text("Menu 2")
                    .padding(.all)
            }
        }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
