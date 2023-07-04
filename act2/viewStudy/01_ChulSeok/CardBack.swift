//
//  FrontView.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/04/30.
//

import SwiftUI

struct CardBack: View {
    func isDarkMode() -> Bool {
        return UITraitCollection.current.userInterfaceStyle == .dark
    }
    @Binding var degree : Double
    var body: some View {
        ZStack{
            Rectangle()
                .frame( height: 463)
                .cornerRadius(20)
                .foregroundColor(Color("ColorSystemCoverBackground"))
            
                .padding(.bottom, 30)
                .overlay(
                    VStack( spacing: 0){
                        Text("한눈에 보는 출석 규정")
                            .font(.system(size: 20, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 40)
                            .padding(.top, 34)
                            .padding(.bottom, 32)
                            
                        Image(isDarkMode() ? "ImgGraphLight" : "ImgGraphDark")
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                            .frame(width: 164)
                            .padding(.bottom, 62)
                        Spacer()
                        
                    }
                )
            // CardView()에서 degree 값을 받아와요.
            // degree를 받아오고, 여기 뷰에서 값이 변화하니까 Binding으로 받아야 겠죠?
            // degree는 카드의 각도인데, 아래 axis 를 y에만 값을 줘서 y축으로 변화된 degree가 적용돼요.
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0), perspective : 0.2)
    }
    
    struct CardBack_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
    
}
