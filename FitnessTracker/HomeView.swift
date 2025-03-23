//
//  HomeView.swift
//  FitnessTracker
//
//  Created by Ian   on 23/03/2025.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 123
    @State var stand: Int = 123
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack {
                Text("Welcome to Havee")
                    .font(.largeTitle)
                    .padding()
            }
            HStack {
                Spacer()
                VStack{
                    VStack(alignment: .leading, spacing: 8){
                        Text("Calories")
                            .font(.callout)
                            .bold()
                            .foregroundColor(.red)
                        
                        Text("123 kcal")
                            .bold()
                    }
                    padding(.bottom)
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Active")
                            .font(.callout)
                            .bold()
                            .foregroundColor(.green)
                        
                        
                        Text("52 Mins")
                            .bold()
                    }
                    padding(.bottom)
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Stand")
                            .font(.callout)
                            .bold()
                            .foregroundColor(.blue)
                        
                        Text("8 hours")
                            .bold()
                    }
                    
                }
                Spacer()
                
                ZStack{//used to overlay views on top of each other
                    
                    ProgressCircleView(Progress: $calories, goal:600, color:.red)
                    
                    ProgressCircleView(Progress: $active, goal:60, color:.green)
                        .padding(.all, 20)
                    ProgressCircleView(Progress: $stand, goal:12, color:.blue)
                        .padding(.all, 40)
                }
                .padding(.horizontal)
                Spacer()
                
            }
            padding()
        }
    }
    
    #Preview {
        HomeView()
    }
}
