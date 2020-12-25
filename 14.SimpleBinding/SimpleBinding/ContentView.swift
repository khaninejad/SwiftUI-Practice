//
//  ContentView.swift
//  SimpleBinding
//
//  Created by Payam on 12/25/20.
//

import SwiftUI

struct ContentView: View {
    var dishes = Dish.all()
    @State var spicy : Bool = false
    var body: some View {
        List{
            Toggle(isOn: $spicy) {
                Text("Is spicy")
            }
            
            ForEach(dishes.filter({$0.isSpicy == self.spicy})) { dish in
                
                

                HStack{
                    Image(dish.imageURL)
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Text(dish.name)
                    
                    Spacer()
                    
                    if(dish.isSpicy){
                        Image("spicy-icon")
                            .resizable()
                            .frame(width: 35, height:35)
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
