//
//  ContentView.swift
//  HotCoffeApp
//
//  Created by Payam on 1/15/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var orderListVM : OrderListViewModel
    @State var showAddModal : Bool = false
    
    init() {
        self.orderListVM = OrderListViewModel()
        
    }
    
    var body: some View {
        
        Button("Load") {
            self.orderListVM.orders =  self.orderListVM.fetchOrders(viewContext: viewContext)
        }
        
        Button("Add New") {
            showAddModal.toggle()
        }.sheet(isPresented: self.$showAddModal){
            AddOrderView()
        }
        
        NavigationView {
        List {
          
            ForEach(self.orderListVM.orders, id: \.name){order in
                Text(order.name)
                
            }
            
        }
        }
 
 
    }

   
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
