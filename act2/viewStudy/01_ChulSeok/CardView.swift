//
//  testView.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/04/30.
//

import SwiftUI

struct CardView: View {
    ///---------01번--------///
    // 처음 뷰가 로드 됐을때, 카드의 위치를 잡아주는거에요.
    // 02번으로 넘겨줘요
    @State var backDegree = 90.0
    @State var frontDegree = 0.0
    ///-----------------------///
    
    @State var isFlipped = false
    @State var width : CGFloat = .infinity
    @State var height : CGFloat = 250
    let durationAndDelay : CGFloat = 0.3
    
    
    ///---------03번--------///
    func flip () {
        // isFlipped = !isFlipped 는 토글이랑 같은 효과를 줘요.
        isFlipped = !isFlipped
        if !isFlipped {
            withAnimation(.linear(duration: durationAndDelay)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: durationAndDelay)) {
                frontDegree = -90

            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                backDegree = 0

            }

        }
    }
    
    var body: some View {
        ///---------02번--------///
        // 01번에서 'backDegree' / 'frontDegree'값을 처음에 받아와요.
        // 그리고, onTapGesture 를 CardFront() / CardBack() 뷰에 걸어두면, 두개의 뷰를 탭할때 flip() 함수를 타요.
        ZStack(alignment: .top){
            CardFront(degree: $frontDegree)
            CardBack(degree: $backDegree)
        }.onTapGesture {
            // 03번으로 넘어가요
            flip ()
            
        }
    }

    struct testView_Previews: PreviewProvider {
        static var previews: some View {
            CardView()
        }
    }
    
    
}
