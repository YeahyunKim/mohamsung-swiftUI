//
//  BackFront.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/04/30.
//

import SwiftUI

struct CardFront: View {
    @Binding var degree : Double
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(height: 463)
                .cornerRadius(20)
                .foregroundColor(Color("ColorSystemCoverBackground"))
                .overlay( //오버레이 안에 직사각형을 또 추가한다.
                    VStack(spacing: 0){
                        Spacer()
                        Image("ImgCalendar")
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                            .frame(width: 152)
                            .padding(.bottom, 42)
                        
                        Text("오늘은 아카데미 휴일! \n푹 쉬고 다음에 만나요.")
                            .font(.system(size: 18))
                            .foregroundColor(.primary)
                            .lineSpacing(8)
                            .frame(maxWidth: .infinity)
                            .padding(.bottom, 16)
                        
                        HStack(spacing: 0){
                            Text("출석 규정 보러가기")
                                .fontWeight(.regular)
                                .font(.system(size: 13))
                                .frame(width: 100)
                            
                            Image(systemName: "chevron.right")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 8, height: 9)
                        }
                        .foregroundColor(Color("ColorSystemBlue"))
                        .padding(.bottom, 30)
                        
                    }
                )
            // CardView()에서 degree 값을 받아와요.
            // degree를 받아오고, 여기 뷰에서 값이 변화하니까 Binding으로 받아야 겠죠?
            // degree는 카드의 각도인데, 아래 axis 를 y에만 값을 줘서 y축으로 변화된 degree가 적용돼요.
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0), perspective : 0.2)
    }
}

struct BackFront_Previews: PreviewProvider {
    
    
    static var previews: some View {
       MainView()
            .preferredColorScheme(.dark)
            
    }
}
