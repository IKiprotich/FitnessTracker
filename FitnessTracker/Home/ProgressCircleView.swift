// ProgressCircleView.swift
// FitnessTracker
//
// Created by Ian on 23/03/2025.

import SwiftUI

struct ProgressCircleView: View {
    // MARK: - Properties
    @Binding var progress: Int  // Two-way binding to track current progress value
    let goal: Int
    let color: Color
    private let width: CGFloat = 20
    
    // MARK: - Body
    var body: some View {
        ZStack {  // Stacks views on top of each other
            Circle()
                .stroke(color.opacity(0.3), lineWidth: width)
            Circle()
                .trim(from: 0, to: CGFloat(progress) / CGFloat(goal))
                .stroke(color, style: StrokeStyle(lineWidth: width, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .shadow(radius: 5)
        }
        .padding()
    }
}

// MARK: - Preview
struct ProgressCircleView_Previews: PreviewProvider {
    static var previews: some View {  // Preview for Xcode canvas
        ProgressCircleView(progress: .constant(100),
                         goal: 200,
                         color: .red)
    }
}
