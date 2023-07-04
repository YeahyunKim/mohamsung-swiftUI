//
//  SwipePromotion.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/05/21.
//

import SwiftUI

struct SwipePromotionArea: View {
    
    var swipePromotions = [
        SwipePromotion(symbol: "shippingbox", text_size : 36 ,text_title:"무료 배송", text_info:"집으로 배송 받으세요. 아니면 Apple Store에서 재고제품을 픽업하세요."),
        
        SwipePromotion(symbol: "macbook.and.iphone", text_size : 31, text_title:"Apple Trade In", text_info:"iPhone 8 이후 모델을 보상 판매하면 iPhone 14 또는 iPhone 14 Pro 구입 시 사용할 수 있는 ₩40,000 ~  ₩780,000 상당의 크레딧이.*"),
        
        SwipePromotion(symbol: "airpodspro.chargingcase.wireless", text_size : 31, text_title:"Airpod Pro", text_info: "에어팟 프로를 잃어버렸습니다. 제발 제 에어팟 프로를 찾아주세요. 찾아주신 분에겐 ₩20,000 상당의 크레딧이.*"),
    ]

    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        TabView() {
            ForEach(swipePromotions) { swipePromotion in
                HStack(alignment: .top, spacing: 0) {
                    // MARK: - symbol
                    Image(systemName: swipePromotion.symbol)
                        .foregroundColor(.primary)
                        .font(.system(size: 36))
                        .padding(.leading, 20)
                        .padding(.trailing, 12)
                    
                    // MARK: - text
                    VStack(alignment: .leading, spacing: 0){
                        Text(swipePromotion.text_title)
                            .foregroundColor(.primary)
                            .font(.system(size: 13))
                            .fontWeight(.medium)
                            .padding(.bottom, 4)
                        
                        Text(swipePromotion.text_info)
                            .font(.system(size: 12))
                            .foregroundColor(.secondary)
                            .fontWeight(.light)
                            .padding(.bottom, 4)
                            
                              
                        Text("더 알아보기")
                            .font(.system(size: 12))
                            .foregroundColor(.blue)
                            .fontWeight(.light)
                        Spacer()
                    }
                }
                .padding(.top, 20)
                .frame(maxWidth:.infinity, alignment:.leading)
            }
        }
        .tabViewStyle(.page)
        .frame(height:  138)
        .border(.red)
        .onAppear{
            dotAppearance.currentPageIndicatorTintColor = .black
            dotAppearance.pageIndicatorTintColor = .lightGray
        }
    }
}

struct SwipePromotionArea_Previews: PreviewProvider {
    static var previews: some View {
        SwipePromotionArea()
    }
}
