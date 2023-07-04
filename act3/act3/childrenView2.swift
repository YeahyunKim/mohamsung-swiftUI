//
//  childrenView2.swift
//  act3
//
//  Created by YouiHyon Kim on 2023/06/12.
//

import SwiftUI

struct childrenView2: View {
    @ObservedObject var cllass = Count()
    
    var body: some View {
        
        Button {
            cllass.thirdNumberAdd()
        } label: {
            Text("\(cllass.thirdNumber)")
        }
    }
}

struct childrenView2_Previews: PreviewProvider {
    static var previews: some View {
        childrenView2()
    }
}
