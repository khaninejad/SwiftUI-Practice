//
//  Card.swift
//  BasicGesture
//
//  Created by Payam on 1/13/21.
//

import SwiftUI

struct Card: View {
    let tapped : Bool
    var body: some View {
        VStack {
            Text("Tap Me")
                .font(.largeTitle)
                .foregroundColor(Color.white)
            
            
        }.frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
        .background(self.tapped ? Color.orange: Color.green)
        
        .cornerRadius(30)
        
    
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(tapped: false)
    }
}
