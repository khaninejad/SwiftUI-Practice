//
//  AddOrderViewModel.swift
//  HotCoffeApp
//
//  Created by Payam on 1/15/21.
//

import Foundation
import SwiftUI
import CoreData

class AddOrderViewModel{
    
    var name : String = ""
    var type : String = ""

    func saveOrder(viewContext: NSManagedObjectContext){
        
        let newItem = Order(context: viewContext)
        newItem.name = self.name
        newItem.type = self.type

        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        
    }
    
    
}
