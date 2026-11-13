//
//  RegisterMethodVIew.swift
//  PROOF
//
//  Created by Adrian Mazek on 13/11/2026.
//

import SwiftUI

struct RegisterMethodView: View {
    var onBack: () -> Void = {}
    var onApple: () -> Void = {}
    var onGoogle: () -> Void = {}
    var onEmail: () -> Void = {}
    var onLogin: () -> Void = {}

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Button(action: onBack) {
                Image(systemName: "chevron.left")
                    .foregroundStyle(Color.dogTextSecondary)
            }

            ScreenHeader(title: "Utwórz konto",
                         subtitle: "Wybierz, jak chcesz się zarejestrować")
              

            SocialAuthButton(title: "Kontynuuj z Apple", style: .apple, action: onApple)
            SocialAuthButton(title: "Kontynuuj z Google", style: .google, action: onGoogle)

            OrDivider()

            Button(action: onEmail) {
                HStack(spacing: 8) {
                    Image(systemName: "envelope")
                    Text("Kontynuuj z e-mailem").font(.headline)
                }
                .foregroundStyle(Color.dogPrimary)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.dogPrimary, lineWidth: 1)
                )
            }

            Spacer()

            Text("Tworząc konto, akceptujesz Regulamin i Politykę prywatności")
                .font(.caption)
                .foregroundStyle(Color.dogTextTertiary)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)

            HStack(spacing: 4) {
                Text("Masz już konto?")
                    .foregroundStyle(Color.dogTextSecondary)
                Button("Zaloguj się", action: onLogin)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.dogPrimary)
            }
            .font(.subheadline)
            .frame(maxWidth: .infinity)
        }
        .padding(24)
        .background(Color.dogBackground)
    }
}
