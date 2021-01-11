//
//  Level.swift
//  TableCell
//
//  Created by Payam on 1/11/21.
//

import Foundation

struct Level : Hashable{
    let name: String
    let image: String
    let price : Double
}

extension Level {
    
    static func all() -> [Level]{
        
        return [ Level(name: "test1", image: "image1", price: 10),
                 Level(name: "test2", image: "image2", price: 10),
        ]
    }
    
}
