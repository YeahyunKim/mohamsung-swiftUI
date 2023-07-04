//
//  Header.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/05/10.
//

import SwiftUI

struct Header: View {
    var body: some View {
        
        HStack{
            Text("쇼핑하기")
                .font(.system(size: 30))
                .fontWeight(.black)
                .padding(.top, 54)
                .padding(.bottom, 10)

            Spacer()
            
            Image("ImgRank")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 37)
                .padding(.top, 48)
                .padding(.bottom, 16 )
                
        }
        .frame(maxWidth: .infinity)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
