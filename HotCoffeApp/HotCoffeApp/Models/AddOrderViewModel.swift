//
//  AddOrderViewModel.swift
//  HotCoffeApp
//
//  Created by Payam on 1/15/21.
//

import Foundation
import SwiftUI

class AddOrderViewModel{
    @Environment(\.managedObjectContext) private var viewContext
    
    var name : String = ""
    var type : String = ""
    
    func saveOrder(){
        
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
