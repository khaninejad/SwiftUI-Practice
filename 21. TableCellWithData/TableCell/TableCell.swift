//
//  TableCell.swift
//  TableCell
//
//  Created by Payam on 1/11/21.
//

import SwiftUI

struct TableCell: View {
    let level : Level
    var body: some View {
      
        HStack {
            
            Image(level.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
        
            VStack(alignment:.leading){
                Text(level.name)
                Text("\(level.price)")
            }
        }
    }
}

struct TableCell_Previews: PreviewProvider {
    static var previews: some View {
        Group{

            TableCell(level: Level.all()[0]).previewLayout(.sizeThatFits).environment(\.sizeCategory, .extraExtraLarge)
        }
        
       
    }
}
