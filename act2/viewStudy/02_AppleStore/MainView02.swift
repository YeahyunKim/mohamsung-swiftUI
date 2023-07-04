//
//  MainView.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/05/10.
//

import SwiftUI

struct MainView02: View {
    
    var body: some View {
        ZStack{
            GeometryReader  { proxy in
                ScrollView {
                        VStack(spacing: 0) {
                        Header()
                            .padding(.horizontal, 20)                            
                        Divider()
                            .padding(.horizontal, 20)
                    
                        SwipePromotionArea()
                        
                        ContentArea()
                        
                        SwipeProductArea()
                                .frame(height: proxy.size.height - 120)
            
                    }
                    
                }
            }
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView02()
        //            .preferredColorScheme(.dark)
    }
}
