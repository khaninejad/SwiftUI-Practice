//
//  ContentView.swift
//  SimpleHardCodedGrid
//
//  Created by Payam on 12/25/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            ForEach(0..<5){ _ in
                
                HStack {
                    
                    ForEach(0..<2) { _ in
                        
                        Image("img1")
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
