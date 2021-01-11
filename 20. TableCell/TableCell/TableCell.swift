//
//  TableCell.swift
//  TableCell
//
//  Created by Payam on 1/11/21.
//

import SwiftUI

struct TableCell: View {
    var body: some View {
        
        HStack {
            
            Image("mando")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
        
            VStack(alignment:.leading){
                Text("Hello, World!")
                Text("Level 1")
            }
        }
    }
}

struct TableCell_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            
            TableCell().colorScheme(.dark) // but needs a navigation view on parent
            
            TableCell().previewDevice("iPhone 6s")
            
            TableCell().previewLayout(.sizeThatFits).environment(\.sizeCategory, .extraSmall)
            
            TableCell().previewLayout(.sizeThatFits).environment(\.sizeCategory, .extraExtraLarge)
        }
        
       
    }
}
