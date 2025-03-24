// HomeView.swift
// FitnessTracker
//
// Created by Ian on 23/03/2025.

import SwiftUI

struct HomeView: View {
    // MARK: - Properties
    @State var calories: Int = 123  // Tracks calorie progress
    @State var active: Int = 123    // Tracks active minutes
    @State var stand: Int = 123     // Tracks stand hours
    
    
    var mockActivities = [
        ActivityCard(activity: Activity(id: 0, title: "Today's Steps", subTitle: "Goal 12,000", image: "figure.walk", tintcolor: .green, amount: "9123")),
        ActivityCard(activity: Activity(id: 1, title: "Today's Steps", subTitle: "Goal 12,000", image: "figure.walk", tintcolor: .red, amount: "9123")),
        ActivityCard(activity: Activity(id: 2, title: "Today's Steps", subTitle: "Goal 12,000", image: "figure.walk", tintcolor: .blue, amount: "9123")),
        ActivityCard(activity: Activity(id: 3, title: "Today's Steps", subTitle: "Goal 12,000", image: "figure.run", tintcolor: .purple, amount: "99123"))
    ]
    
    // MARK: - Body
    var body: some View {
        ScrollView(showsIndicators: false) {  // Scrollable content container
            VStack(alignment: .leading) {
                Text("Welcome to Havee")
                    .font(.largeTitle)
                    .padding()
            }
            HStack {
                Spacer()
                VStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Calories")
                            .font(.callout)
                            .bold()
                            .foregroundColor(.red)
                        Text("123 kcal")
                            .bold()
                    }
                    .padding(.bottom)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Active")
                            .font(.callout)
                            .bold()
                            .foregroundColor(.green)
                        Text("52 Mins")
                            .bold()
                    }
                    .padding(.bottom)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Stand")
                            .font(.callout)
                            .bold()
                            .foregroundColor(.blue)
                        Text("8 hours")
                            .bold()
                    }
                }
                Spacer()
                
                ZStack {  // Overlays progress circles
                    ProgressCircleView(progress: $calories, goal: 600, color: .red)
                    ProgressCircleView(progress: $active, goal: 60, color: .green)
                        .padding(.all, 20)
                    ProgressCircleView(progress: $stand, goal: 12, color: .blue)
                        .padding(.all, 40)
                }
                .padding(.horizontal)
                Spacer()
            }
            .padding()
            
            //title and button
            HStack{
                Text("Fitness Activity")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button{
                    print("Show More")
                }
                label:{
                    Text("Show More")
                        .padding(.all, 10)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                }
            padding(.horizontal)
            
            LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                
                ForEach(mockActivities, id: \.id){activity in
                    ActivityCard(activity: activity)
                       
                }
                
               
                
                
            }
            
            }
        }
    }


// MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {  // Preview for Xcode canvas
        HomeView()
    }
}
