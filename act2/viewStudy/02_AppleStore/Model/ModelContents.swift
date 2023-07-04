//
//  Promotion.swift
//  viewStudy
//
//  Created by YouiHyon Kim on 2023/05/11.
//

import SwiftUI

struct SwipePromotion: Identifiable {
    let id = UUID()
    var symbol : String
    var text_size : Double
    var text_title : String
    var text_info : String
}

struct MainContent: Identifiable {
    let id = UUID()
    var image : String
    var text_title : String
    var text_subtitle : String
    var text_info : String
}


struct SwipeProduct: Identifiable {
    let id = UUID()
    var image : String
    var text_title : String
    var text_info : String
    var text_color : String
}
