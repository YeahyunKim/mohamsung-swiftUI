//
//  ContentView.swift
//  act3
//
//  Created by YouiHyon Kim on 2023/06/04.
//

import SwiftUI

struct AlarmView: View {

    var body: some View {
        
        NavigationStack  {
            List {
                // MARK: - 수면 | 기상 영역
                Section {
                    HStack{
                        Text("알람 없음")
                            .font(.system(size : 14))
                            .padding(.vertical, 10)
                        
                        Spacer()
                        
                        
                        Text("설정")
                            .font(.system(size : 13))
                            .padding(.vertical, 6)
                            .padding(.horizontal, 9)
                            .foregroundColor(Color("ColorFontOrange"))
                            .background(Color("ColorBgGray"))
                            .cornerRadius(30)
                    }
                } header: {
                    ListHeader(listHeaderImage: "bed.double.fill", listHeaderText: "수면 | 기상")
                }
                
                // MARK: - 기타 영역
                Section {
                    AlarmList()
                    AlarmList()
//                    AlarmList()
                } header: {
                    ListHeader(listHeaderImage: "", listHeaderText: "기타")
                }
                
            }
            .listStyle(.plain)
            .navigationTitle("알람")
            .toolbar{
                Image(systemName: "plus")
                    .foregroundColor(Color("ColorIconOrange"))
            }
            //List End
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView()
    }
}
