//
//  SwiftUIView.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/04/29.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("월클 디벨로퍼 Malty.\n오늘도 화이팅 하세요!")
            .font(.system(size: 18))
            .foregroundColor(.primary)
            .lineSpacing(8)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 20)
            .padding(.bottom, 34)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
            .preferredColorScheme(.dark)
            
        
    }
}

