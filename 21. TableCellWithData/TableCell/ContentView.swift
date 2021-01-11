//
//  ContentView.swift
//  TableCell
//
//  Created by Payam on 1/11/21.
//

import SwiftUI

struct ContentView: View {
    let levels = Level.all()
    
    var body: some View {
        
        
        List{
            
            
            ForEach(levels,id: \.self) { level in
                
                TableCell(level: level)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
