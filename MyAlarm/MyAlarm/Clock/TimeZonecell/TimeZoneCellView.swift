//
//  TimeZoneCellView.swift
//  MyAlarm
//
//  Created by Ajin on 03/01/24.
//

import SwiftUI

struct TimeZoneCellView: View {
    
    @ObservedObject var vm: TimeZoneCellViewModel = TimeZoneCellViewModel()
    
    var body: some View {
        HStack{
            
            VStack(alignment: .leading){
                Text("Toronto")
                    .font(.system(size: 25))
                Text("10 hrs 30 mins behind")
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Text("00:00")
                .font(.system(size: 40))
            VStack {
                Spacer()
                Text("am")
                    .padding(.bottom, 30)
            }
        }
        .padding(.horizontal)
        .frame(height: 100)
    }
}

struct TimeZoneCellView_Previews: PreviewProvider {
    static var previews: some View {
        TimeZoneCellView()
    }
}
