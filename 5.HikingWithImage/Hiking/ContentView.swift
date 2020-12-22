//
//  ContentView.swift
//  Hiking
//
//  Created by Payam on 12/22/20.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        
        List(self.hikes, id: \.name){ hike in
            HStack{
                Image(hike.imageUrl)
                    .resizable()
                    .frame(width: 100, height:100)
                    .cornerRadius(16)
                Text(hike.name)
                    .padding()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
