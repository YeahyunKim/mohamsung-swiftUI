//
//  AlarmList.swift
//  act3
//
//  Created by YouiHyon Kim on 2023/06/05.
//

import SwiftUI


struct AlarmList: View {
    @State var isToggleOn = true
    
    var body: some View {
        VStack(alignment: .leading,spacing: 0){
            
            HStack(alignment: .bottom, spacing: 0){
                Text("오전")
                    .font(.system(size: 35))
                    .baselineOffset(7)
                
                Text("7:00")
                    .font(.system(size : 59))
                
                Spacer()
                
                Toggle("", isOn: $isToggleOn)
                    .padding(.bottom, 10)
                    .padding(.trailing, 4)
                    .labelsHidden()
            }
            Text("알람")
                .font(.system(size : 12))
            
            
        }
        .foregroundColor(Color("\(isToggleOn ? "ColorFontWhite" : "ColorFontGray")"))
        
    }
}

struct AlarmList_Previews: PreviewProvider {
    static var previews: some View {
        AlarmList()
    }
}
