//
//  ContentView.swift
//  FancyTImerObservableObject
//
//  Created by Payam on 12/25/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var fancyTimer = FancyTimer()
    var body: some View {
        
        
        Text("\(self.fancyTimer.value)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
