//
//  Childrenview.swift
//  act3
//
//  Created by YouiHyon Kim on 2023/06/05.
//

import SwiftUI

struct Childrenview: View {
    @StateObject var cllass = Count()
    
    var body: some View {
        VStack{
            
            Button {
                cllass.secondNumberAdd()
            } label: {
                Text("\(cllass.secondNumber)")
            }
            
            childrenView2()
        }
    }
}

struct Childrenview_Previews: PreviewProvider {
    static var previews: some View {
        Childrenview()
    }
}
