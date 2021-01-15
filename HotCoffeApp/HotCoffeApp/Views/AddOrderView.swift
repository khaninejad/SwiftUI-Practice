//
//  AddOrderView.swift
//  HotCoffeApp
//
//  Created by Payam on 1/15/21.
//

import SwiftUI

struct AddOrderView: View {
    @State var addOrderVM = AddOrderViewModel()
    
    var body: some View {
        NavigationView {
            Group{
                VStack {
                    TextField("Enter Name", text: self.$addOrderVM.name)
                    
                    Picker(selection: self.$addOrderVM.type, label: Text("")){
                        Text("Cappuchino").tag("cap")
                        Text("Reqular").tag("req")
                        Text("Esspresso").tag("ess")
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Button("Place Order"){
                        self.addOrderVM.saveOrder
                    }
                }
            }.padding()
            .navigationTitle("Add Order")
        }
    }
}

struct AddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView()
    }
}
