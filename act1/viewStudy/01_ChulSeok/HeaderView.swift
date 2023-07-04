//
//  HeaderView.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/04/28.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(spacing: 16){
            Spacer()
            Image(systemName: "calendar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28)
                .foregroundColor(Color("ColorSystemBlue"))
            
            Image(systemName: "gearshape")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28)
                .foregroundColor(Color("ColorSystemBlue"))
        }
        
        .padding(.trailing, 5)
        .padding(.vertical, 12)

    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
        //            .preferredColorScheme(.dark)
    }
}

