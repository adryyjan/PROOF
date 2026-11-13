//
//  SummaryRow.swift
//  PROOF
//
//  Created by Adrian Mazek on 13/11/2026.
//
import SwiftUI

struct SummaryRow: View {
    let title: String
    let value: String

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text(title)
                    .foregroundStyle(Color.dogTextSecondary)
                Spacer()
                Text(value)
                    .foregroundStyle(Color.dogTextPrimary)
            }
            .font(.subheadline)
            .padding(.vertical, 12)
            Divider()
        }
    }
}
