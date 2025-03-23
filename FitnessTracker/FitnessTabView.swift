//
//  FitnessTabView.swift
//  FitnessTracker
//
//  Created by Ian   on 23/03/2025.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "HomeV"
    
    init() {
       let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        UITabBar.appearance().scrollEdgeAppearance = appearance
        
        
    }
    
    var body: some View {
        TabView(selection: $selectedTab){
            
            HomeView()
                .tag( "HomeV")
                .tabItem{
                    Image(systemName: "house")
                }
            
            HistoricDataView()
                .tag( "HistoricV")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Charts")
                }
            
        }
        
    }
}

struct FitnessTabView_Previews: PreviewProvider {
        static var previews: some View {
            FitnessTabView()
        }
    }
