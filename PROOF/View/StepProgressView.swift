//
//  StepProgressView.swift
//  PROOF
//
//  Segmentowy pasek postępu dla wieloetapowych flow (np. onboarding).
//

import SwiftUI

struct StepProgressView: View {
    let currentStep: Int
    let totalSteps = 4
    var spacing: CGFloat = 4
    var height: CGFloat = 4

    var body: some View {
        HStack(spacing: spacing) {
            ForEach(0..<max(totalSteps, 0), id: \.self) { index in
                ZStack(alignment: .leading) {
                    Capsule()
                        .fill(Color.dogBorder)

                    Capsule()
                        .fill(Color.dogPrimary)
                        .scaleEffect(x: index < currentStep ? 1 : 0, anchor: .leading)
                }
                .frame(height: height)
            }
        }
        .animation(.spring(response: 0.4, dampingFraction: 0.8), value: currentStep)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Krok \(currentStep) z \(totalSteps)")
    }
}
