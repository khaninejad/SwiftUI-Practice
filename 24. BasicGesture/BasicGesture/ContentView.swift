//
//  ContentView.swift
//  BasicGesture
//
//  Created by Payam on 1/13/21.
//

import SwiftUI

struct ContentView: View {
    @State private var tapped : Bool = false
    var body: some View {
        Card(tapped: self.tapped)
            .gesture(TapGesture(count: 1)
                        .onEnded({ () in
                            self.tapped.toggle()
                        })
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
