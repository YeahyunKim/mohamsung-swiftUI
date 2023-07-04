//
//  ListHeader.swift
//  act3
//
//  Created by YouiHyon Kim on 2023/06/05.
//

import SwiftUI

struct ListHeader: View {
    var listHeaderImage : String    
    var listHeaderText : String
    
    var body: some View {
        HStack (spacing:0){
            
            
            
            if listHeaderImage != "" {
                Image(systemName: listHeaderImage)
                    .font(.system(size: 14))
                    .padding(.trailing, 4)
                    .foregroundColor(Color("ColorFontWhite"))
            }
            Text(listHeaderText)
                .font(.system(size: 17))
                .foregroundColor(Color("ColorFontWhite"))
        }
        // HStack End
        
    }
}

struct ListHeader_Previews: PreviewProvider {
    static var previews: some View {
        ListHeader(listHeaderImage: "house", listHeaderText: "사고싶다")
    }
}
