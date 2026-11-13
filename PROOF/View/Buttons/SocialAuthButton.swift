//
//  SocialAuthButton.swift
//  PROOF
//
//  Created by Adrian Mazek on 13/11/2026.
//

import SwiftUI

struct SocialAuthButton: View {
    enum Style { case apple, google }

    let title: String
    let style: Style
    var action: () -> Void = {}

    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                icon
                Text(title).font(.headline)
            }
            .foregroundStyle(style == .apple ? Color(.systemBackground) : Color.dogTextPrimary)
            .frame(maxWidth: .infinity)
            .frame(height: 48)
            .background(
                style == .apple ? Color.primary : Color.dogBackground,
                in: RoundedRectangle(cornerRadius: 12)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.dogBorder, lineWidth: style == .google ? 1 : 0)
            )
        }
    }

    @ViewBuilder
    private var icon: some View {
        switch style {
        case .apple:  Image(systemName: "apple.logo")
        case .google: Image(systemName: "g.circle")
        }
    }
}
