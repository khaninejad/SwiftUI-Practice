//
//  BarGraph.swift
//  BarGraph
//
//  Created by Payam on 1/12/21.
//

import SwiftUI

struct BarGraph: View {
    var body: some View {
        
        HStack(alignment: .lastTextBaseline){
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 80, height: 120, alignment: .center)
                .padding()
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 80, height: 180, alignment: .center)
                .padding()
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 80, height: 80, alignment: .center)
                .padding()
            
            Spacer()
                
            
        }
        
    }
}

struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph()
    }
}
