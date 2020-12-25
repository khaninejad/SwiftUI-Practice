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
        NavigationView{
            List(self.hikes, id: \.name){ hike in
                NavigationLink(destination: HikingDetail(hike: hike)){
                    HikeCell(hike: hike)
                }
                
            }
            .navigationTitle("Hikes")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    let hike : Hike
    var body: some View {
        HStack{
            Image(hike.imageUrl)
                .resizable()
                .frame(width: 100, height:100)
                .cornerRadius(16)
            
            VStack(alignment: .leading){
                Text(hike.name)
                    .padding()
                Text(String(format: "%.2f", hike.miles))
            }
            
        }
    }
}
