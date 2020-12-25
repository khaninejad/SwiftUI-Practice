//
//  FancyTimer.swift
//  FancyTImerObservableObject
//
//  Created by Payam on 12/25/20.
//

import Foundation
import SwiftUI
import Combine

class FancyTimer: ObservableObject{
    @Published var value : Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){ timer in 
            self.value += 1
        }
        
    }
    
    
}
