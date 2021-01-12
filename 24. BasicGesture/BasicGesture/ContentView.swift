//
//  ContentView.swift
//  BasicGesture
//
//  Created by Payam on 1/13/21.
//

import SwiftUI

struct ContentView: View {
    @State private var tapped : Bool = false
    @State private var onDragChanged = CGSize.zero
    var body: some View {
        Card(tapped: self.tapped)
            .offset(y: self.onDragChanged.height)
            .gesture(DragGesture()
                        .onChanged { value in
                            onDragChanged = value.translation
                        }
                        .onEnded{ value in
                            onDragChanged = CGSize.zero
                        }
            )
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
