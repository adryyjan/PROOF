//
//  ScreenHeader.swift
//  PROOF
//
//  Created by Adrian Mazek on 13/11/2026.
//
import SwiftUI

struct ScreenHeader: View {
    let title: String
    var subtitle: String? = nil

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.title2.weight(.medium))
                .foregroundStyle(Color.dogTextPrimary)
            if let subtitle {
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(Color.dogTextSecondary)
            }
        }
        .padding(.leading, 8)
    }
}
