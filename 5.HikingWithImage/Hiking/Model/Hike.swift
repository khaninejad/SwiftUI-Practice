//
//  Hike.swift
//  Hiking
//
//  Created by Payam on 12/22/20.
//

import Foundation

struct Hike {
    let name: String
    let imageUrl : String
    let miles : Double
}

extension Hike{
    static func all() -> [Hike]{
      return[
        Hike(name: "name1", imageUrl: "sal", miles: 10),
        Hike(name: "name2", imageUrl: "mon", miles: 20),
        Hike(name: "name3", imageUrl: "dom", miles: 10)
      ]
    }
}
