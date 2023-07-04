////
////  ModelList.swift
////  act3
////
////  Created by YouiHyon Kim on 2023/06/05.
////
//
import SwiftUI
//
class ModelList: Identifiable, ObservableObject  {
    let id = UUID()
    var date : Date
    var partOfDay : String
    var time : String
    @Published var isToggleOn : Bool
    

    init(date: Date) {
        let dateFormatter = DateFormatter()
        
        self.date = date
        
        dateFormatter.dateFormat = "a"
        partOfDay = dateFormatter.string(from: date)
        
        dateFormatter.dateFormat = "h:mm"
        time = dateFormatter.string(from: date)
        
        isToggleOn = true
    }
    
    
    func updateDate(date:Date) {
        let dateFormatter = DateFormatter()
        
        
        
    }
    
    
}





//

class Count: ObservableObject {
    @Published var firstNumber : Int = 1
    @Published var secondNumber : Int = 1
    @Published var thirdNumber : Int = 1
    
    func firstNumberAdd () {
        firstNumber += 1
    }
    
    func secondNumberAdd () {
        secondNumber += 1
    }
    
    func thirdNumberAdd () {
        thirdNumber += 1
    }
}










