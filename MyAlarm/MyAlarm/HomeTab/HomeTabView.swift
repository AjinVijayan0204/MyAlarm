//
//  HomeTabView.swift
//  MyAlarm
//
//  Created by Ajin on 19/11/23.
//

import SwiftUI

struct HomeTabView: View {
    
    var body: some View {
        TabView {
            ForEach(HomeTabBarItems.allCases, id: \.self){ tab in
                Text(tab.tabTitle())
                    .tabItem {
                        Label(tab.tabTitle(), systemImage: "")
                    }
            }
        }
        .tint(Color(UIColor(named: "lightAndDark")!))
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
