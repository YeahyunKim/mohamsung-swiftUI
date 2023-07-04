//
//  ButtonView.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/05/01.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        
        Button {
            print("hello")
        } label: {
            Capsule()
                .foregroundColor(Color("ColorSystemButton"))
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .overlay( Text("출쓱하기")
                    .padding(.vertical, 38)
                    .foregroundColor(Color(.white)))
        }
        .frame(maxWidth: .infinity) 

    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
