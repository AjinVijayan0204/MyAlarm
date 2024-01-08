//
//  AlarmView.swift
//  MyAlarm
//
//  Created by Ajin on 06/01/24.
//

import SwiftUI

struct AlarmView: View {
    var body: some View {
        GeometryReader { proxy in
            VStack{
                VStack{
                    
                }
                .frame(width: proxy.size.width, height: 120)
                .padding()
                .border(.black)
                
                
            }
        }
    }
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView()
    }
}
