//
//  BarGraph.swift
//  BarGraph
//
//  Created by Payam on 1/12/21.
//

import SwiftUI

struct BarGraph: View {
    
    let reports : [Report]
    var body: some View {
        
        
        HStack(alignment: .lastTextBaseline){
            ForEach(reports, id: \.self) { report in
                BarView(report:     report)
            }
            
            Spacer()
                
            
        }
        
    }
}

struct BarView: View {
    let report : Report
    var body: some View {
        let value = report.reveniue / 500
        let yvalue = Swift.min(value * 20 , 500)
        
        return VStack {
            
            Text(String(format: "$%.0f", report.reveniue))
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 80, height: CGFloat(yvalue))
                .padding()
            
            Text(report.year)
        }
    }
    
    
}

struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph(reports:  Report.all() )
    }
}
