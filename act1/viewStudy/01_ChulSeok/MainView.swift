//
//  ContentView.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/04/28.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        ZStack(){
            Color("ColorSystemBackground").ignoresSafeArea()
            
            VStack(spacing: 0) {
                //01_HeaderView
                HeaderView()
                    .border(.red)
                TextView()
                    .border(.yellow)
                CardView()
                    .border(.blue)
                ButtonView()
                    .border(.green)

            }
            .frame(maxWidth: .infinity)
            // 모든 컴포넌트에 padding값을 줄 필요없이, 여기에 주면 다른 뷰들 옆에 padding 이 적용돼요.
            .padding(.horizontal, 25)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
    }    
}
