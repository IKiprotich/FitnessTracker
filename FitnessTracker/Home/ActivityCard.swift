//
//  ActivityCard.swift
//  FitnessTracker
//
//  Created by Ian   on 24/03/2025.
//

import SwiftUI

struct Activity{
    let id: Int
    let title: String
    let subTitle: String
    let image: String
    let tintcolor: Color
    let amount: String
    
    
    
}

struct ActivityCard: View {
    @State var activity: Activity
    var body: some View {
        
        ZStack{
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            
            VStack{
                
                HStack(alignment:.top){
                    
                    VStack(alignment:.leading, spacing: 8){
                        Text(activity.title)
                        
                        Text(activity.subTitle)
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    Image(systemName: activity.image)
                        .foregroundColor(activity.tintcolor)
                    
                }
                Text(activity.amount)
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
            
            
        }
        
    }
}


struct ActivityCard_Previews: PreviewProvider {
    static var previews: some View {
        ActivityCard(activity: Activity(id: 0, title: "Today's Steps", subTitle: "Goal 12,000", image: "figure.walk", tintcolor: .green, amount: "9123"))
    }
}
