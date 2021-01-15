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




    var body: some View {
        AddOrderView().environment(\.managedObjectContext, viewContext)
    }

   
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
