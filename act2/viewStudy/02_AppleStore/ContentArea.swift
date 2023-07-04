//
//  Content.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/05/19.
//

import SwiftUI

struct ContentArea: View {
    
    var mainContents = [
        MainContent(image : "ImgSwipePromotion01", text_title: "Iphone 14", text_subtitle: "NEW", text_info: "iPhone 14 그리고 큼직한 사이즈의 iPhone 14 Plus. 획기적인 도약을 이뤄낸 배터리 성능. 프로급 카메라. 6가지 멋진 컬러."),
        MainContent(image : "ImgSwipePromotion02", text_title: "iPad", text_subtitle: "NEW", text_info: "다양한 일상 작업에 맞는 완전히 새롭고, 컬러풀한 iPad. 새로운 iPad를 소개합니다.")
    ]

    var body: some View {
        VStack(spacing: 0){
            ForEach(mainContents) {mainContent in
                // MARK: - image
                Image(mainContent.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .overlay(
                        
                        // MARK: - info
                        VStack(alignment: .leading, spacing: 0){
                            Text(mainContent.text_subtitle)
                                .foregroundColor(Color("ColorFontGray"))
                                .font(.system(size: 10))
                                .fontWeight(.semibold)
                                .padding(.bottom, 2)
                            
                            
                            Text(mainContent.text_title)
                                .foregroundColor(Color("ColorFontBlack"))
                                .font(.system(size: 30))
                                .fontWeight(.semibold)
                                .padding(.bottom, 12)
                            
                            
                            Text(mainContent.text_info)
                                .font(.system(size: 13))
                                .foregroundColor(Color("ColorFontBlack"))
                                .lineSpacing(2)
                        }
                            .padding(.horizontal, 20)
                            .offset(y: 24), alignment: .topLeading
                    )
                
                
                // MARK: - price
                HStack{
                    Text("₩1,250,000부터")
                        .font(.system(size: 10))
                        .padding(.leading, 20)
                    Spacer()
                    Button {
                        print("구입하기")
                    } label: {
                        Text("구입하기")
                            .font(.system(size: 13))
                            .fontWeight(.regular)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 6)
                    .background(Color("ColorButtonGray"))
                    .cornerRadius(17)
                    .padding(.trailing, 20)
                    .padding(.vertical, 20)
                    
                    
                }.background(Color("ColorBackgroundGray"))
                
            }
            
            
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        ContentArea()
    }
}
