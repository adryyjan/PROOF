//
//  LoginView.swift
//  PROOF
//
//  Created by Adrian Mazek on 13/11/2026.
//
import SwiftUI

struct LoginView: View {
    @State private var VM = LoginViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ScreenHeader(title: "Zaloguj się", subtitle: "Wróć do swoich zadań")
                .padding(.bottom, 8)

            SocialAuthButton(title: "Kontynuuj z Apple", style: .apple, action: VM.onApple)
            SocialAuthButton(title: "Kontynuuj z Google", style: .google, action: VM.onGoogle)

            OrDivider()

            AuthTextField(placeholder: "Email", text: $VM.email)
                .textInputAutocapitalization(.never)
                .keyboardType(.emailAddress)
            AuthTextField(placeholder: "Hasło", isSecure: true, text: $VM.password )

            Button("Zapomniałeś hasła?", action: VM.onForgotPassword)
                .font(.footnote)
                .foregroundStyle(Color.dogPrimary)
                .frame(maxWidth: .infinity, alignment: .trailing)

            PrimaryButton(title: "Zaloguj", action: VM.onLogin, isClickable: true)

            Spacer()

            HStack(spacing: 4) {
                Text("Nie masz konta?")
                    .foregroundStyle(Color.dogTextSecondary)
                Button("Zarejestruj się", action: VM.onRegister)
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
