//
//  HikingDetail.swift
//  Hiking
//
//  Created by Payam on 12/24/20.
//

import SwiftUI

struct HikingDetail: View {
    let hike : Hike
    
    var body: some View {

        VStack{
            Image(hike.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            
                Text(hike.name)
            
                Text(String(format: "%.2f", hike.miles))
        }
       
        
    }
}

struct HikingDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikingDetail(hike: Hike(name: "name Test", imageUrl: "sal", miles: 10))
    }
}
