//
//  PrimaryButton.swift
//  PROOF
//
//  Created by Adrian Mazek on 13/11/2026.
//
import SwiftUI 

struct PrimaryButton: View {
    let title: String
    var action: () -> Void = {}
    var isClickable: Bool = false

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundStyle(Color.dogBackground)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .background(isClickable ? Color.dogPrimary : Color.dogPrimary.opacity(0.3), in: RoundedRectangle(cornerRadius: 12))
        }
    }
}
