//
//  SwipeProduct.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/05/21.
//

import SwiftUI

struct SwipeProductArea: View {
    
    var swipeProducts = [
        SwipeProduct(image: "ImgSwipeProduct01", text_title:"다채롭게 만개한\n어버이날 선물.", text_info:"쉽게 선물 쇼핑하기.", text_color : "ColorFontBlack"),
        SwipeProduct(image: "ImgSwipeProduct02", text_title:"iPhone 14 Pro\n딥 퍼플", text_info:"쉽게 선물 쇼핑하기.",  text_color : "ColorFontWhite"),
        SwipeProduct(image: "ImgSwipeProduct03", text_title:"MacBook Pro 14\n및 16", text_info:"이거 문구를 발견하고, 톡방에 메세지를 먼저 보내는 사람은 페페의 선물이!", text_color : "ColorFontWhite")
    ]
    
    private let dotAppearance = UIPageControl.appearance()
    @GestureState var offset : CGFloat = 0
    @State var index : Int = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            
            Text("추천")
                .font(.system(size: 24))
                .fontWeight(.semibold)
                .foregroundColor(Color("ColorFontBlack"))
                .padding(.leading, 20)
                .padding(.vertical, 38)
            
            GeometryReader {proxy in
                
                let width = (proxy.size.width - 50)
                
                HStack(spacing: 20) {
                    ForEach(swipeProducts) { swipeProduct in
                        Image(swipeProduct.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: proxy.size.width - 60)
                            .shadow(radius: 10)
                            .overlay(
                                
                                VStack(alignment: .leading, spacing: 0){
                                    Text(swipeProduct.text_title)
                                        .font(.system(size: 26))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(swipeProduct.text_color))
                                        .padding(.bottom, 8)
                                    
                                    Text(swipeProduct.text_info)
                                        .font(.system(size: 14))
                                        .fontWeight(.light)
                                        .foregroundColor(Color(swipeProduct.text_color))
                                    
                                }
                                    .padding(.horizontal, 20)
                                    .offset(x : 20 , y :24), alignment: .topLeading
//                                    .position(x: 20, y: 24)
                            )
                            .frame(maxWidth:.infinity, alignment:.leading)
                    }
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity)
                .offset(x: (CGFloat(index) * -width) + offset)
                .gesture(
                    DragGesture()
                        .updating($offset, body: { value, out, _ in
                            out = value.translation.width
                        })
                        .onEnded ({ value in
                            
                            print(value)
                            let offsetX = value.translation.width
                            let process = -offsetX / width
                            let roundIndex  = process.rounded()
                            
                            index = max(min(index + Int(roundIndex), swipeProducts.count - 1), 0)
                            
                        })
                )
            }
            .animation(.easeInOut, value : offset == 0)
        }
    }
}


struct SwipeProduct_Previews: PreviewProvider {
    static var previews: some View {
        SwipeProductArea()
    }
}
