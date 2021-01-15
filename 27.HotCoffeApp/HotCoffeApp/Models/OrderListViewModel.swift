//
//  OrderListViewModel.swift
//  HotCoffeApp
//
//  Created by Payam on 1/15/21.
//

import SwiftUI
import CoreData
import Combine
import Foundation

class OrderListViewModel: ObservableObject {
    @Published  var orders = [OrderViewModel]()
    
    init() {
        
    }
    
    
    func fetchOrders(viewContext: NSManagedObjectContext) -> [OrderViewModel] {
        var orders = [Order]()
        let orderRequest : NSFetchRequest<Order> = Order.fetchRequest()
        
        do  {
            orders = try viewContext.fetch(orderRequest)
        }catch let error as NSError {
            print(error)
        }
        let list =  orders.map(OrderViewModel.init)
        return list
        
    }
}

class OrderViewModel {
    var name = ""
    var type = ""
    
    init(order: Order){
        self.name = order.name!
        self.type = order.type!
    }
    
}
