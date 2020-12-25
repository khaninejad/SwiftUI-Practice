//
//  ContentView.swift
//  StateWithSubViewBinding
//
//  Created by Payam on 12/25/20.
//

import SwiftUI

struct ContentView: View {
    let episode = Episode(name: "Bob marley", track: "Test")
    @State private var IsPlaying : Bool = false
    var body: some View {
        
        
        VStack {
            Text(episode.name)
                .foregroundColor(self.IsPlaying ? .blue : .black)
                .padding()
            
            Text(episode.track)
                .padding()
            
            PlayButton(isPlaying: $IsPlaying)
            
            
        }
    }
}
struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    
    var body : some View{
        
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text("Play")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
