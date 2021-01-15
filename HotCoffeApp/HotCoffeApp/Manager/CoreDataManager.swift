//
//  CoreDataManager.swift
//  HotCoffeApp
//
//  Created by Payam on 1/15/21.
//

import Foundation
import CoreData

class CoreDataManager {
    
    //static let shared = CoreDataManager(moc: <#T##NSManagedObjectContext#>)
    
    var moc : NSManagedObjectContext
    
   private init(moc: NSManagedObjectContext){
        self.moc = moc
    }
    
}
