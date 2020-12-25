//
//  HikingDetail.swift
//  Hiking
//
//  Created by Payam on 12/24/20.
//

import SwiftUI

struct HikingDetail: View {
    let hike : Hike
    @State private var zoomed: Bool = false
    var body: some View {

        VStack{
            Image(hike.imageUrl)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ?  .fit : .fill)
                .onTapGesture {
                    zoomed.toggle()
                }
            
            
                Text(hike.name)
            
                Text(String(format: "%.2f", hike.miles))
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
       
        
    }
}

struct HikingDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikingDetail(hike: Hike(name: "name Test", imageUrl: "sal", miles: 10))
    }
}
