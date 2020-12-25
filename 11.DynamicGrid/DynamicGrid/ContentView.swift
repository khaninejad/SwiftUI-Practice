//
//  ContentView.swift
//  DynamicGrid
//
//  Created by Payam on 12/25/20.
//

import SwiftUI

struct ContentView: View {
    let dishes = Dish.all()
    var body: some View {
        let chunkedDishes = dishes.chunked(into: 3)
        
        return List {
            
            // rows
            ForEach(0..<chunkedDishes.count) { index in
                
                HStack {
                    
                    ForEach(chunkedDishes[index]) { dish in
                        
                        Image(dish.imageURL)
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
