//
//  ContentView.swift
//  DisplayImage
//
//  Created by Payam on 12/22/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Image("mando")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            
            
            Image("mando")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .padding(.all)
            

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
