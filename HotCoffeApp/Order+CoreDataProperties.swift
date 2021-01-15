//
//  Order+CoreDataProperties.swift
//  HotCoffeApp
//
//  Created by Payam on 1/15/21.
//
//

import Foundation
import CoreData


extension Order {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Order> {
        return NSFetchRequest<Order>(entityName: "Order")
    }

    @NSManaged public var name: String?
    @NSManaged public var type: String?

}

extension Order : Identifiable {

}
