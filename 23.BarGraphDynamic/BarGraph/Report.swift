//
//  Report.swift
//  BarGraph
//
//  Created by Payam on 1/12/21.
//

import Foundation

struct Report :Hashable {
    let year : String
    let reveniue : Double
}

extension Report{
    static func all() -> [Report]{
        
        return [
            Report(year: "2001", reveniue: 1000 ),
            Report(year: "2005", reveniue: 600 ),
            Report(year: "2020", reveniue: 1800 )
        ]
    }
}
