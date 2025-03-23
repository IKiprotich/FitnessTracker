//
//  ProgressCircleView.swift
//  FitnessTracker
//
//  Created by Ian   on 23/03/2025.
//

import SwiftUI

struct ProgressCircleView: View {
    @Binding var Progress: Int
    var body: some View {
        var color: Color
        var goal: Int
        private let width: CGFloat = 20
        
        ZStack{//used to overlay views on top of each other
            Circle()
                .stroke(color.opacity(0.3), lineWidth: 20)
            Circle()
                .trim(from: 0, to: CGFloat(Progress)/CGFloat(goal))
                .stroke(color, style:StrokeStyle(lineWidth: 20, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .shadow(radius:5)
               
        }
        .padding()
    }
}

struct ProgressCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircleView(Progress: .constant(100), goal:200, color:.red)
    }
}
