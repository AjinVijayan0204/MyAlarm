//
//  TimeZoneCellView.swift
//  MyAlarm
//
//  Created by Ajin on 03/01/24.
//

import SwiftUI

struct TimeZoneCellView: View {
    
    @ObservedObject var vm: TimeZoneCellViewModel 
    
    var body: some View {
        HStack{
            
            VStack(alignment: .leading){
                Text(vm.zone)
                    .font(.system(size: 20))
                Text("\(vm.difference.0) hrs \(vm.difference.1) mins behind")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Text(vm.time)
                .font(.system(size: 33))
            VStack {
                Spacer()
                Text(vm.meridian)
                    .padding(.bottom, 32)
            }
        }
        .padding(.horizontal)
        .frame(height: 100)
        .background(content: {
            Color("lightAsh")
                .padding(.all, 5)
                .clipShape(RoundedRectangle(cornerRadius: 35))
        })
    }
}

struct TimeZoneCellView_Previews: PreviewProvider {
    static var previews: some View {
        TimeZoneCellView(vm: TimeZoneCellViewModel(timeZone: ""))
    }
}
