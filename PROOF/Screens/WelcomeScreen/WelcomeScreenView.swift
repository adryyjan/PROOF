//
//  WelcomeScreenView.swift
//  PROOF
//
//  Created by Adrian Mazek on 13/11/2026.
//

import SwiftUI

struct WelcomeScreenView: View {
    @Binding var isPresented: Bool
    @State private var VM = WelcomeScreenViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()

            Image("ProofLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 28))

            Text("PROOF")
                .font(.system(size: 36, weight: .bold))
                .tracking(6)
                .foregroundStyle(Color.dogTextPrimary)
                .padding(.top, 24)

            Text("Bridging the gap between planning and doing")
                .font(.subheadline)
                .foregroundStyle(Color.dogPrimary)
                .multilineTextAlignment(.center)
                .padding(.top, 8)
                .padding(.horizontal, 32)

            Spacer()

            VStack(spacing: 12) {
                PrimaryButton(title: "Utwórz konto", action: {VM.showRegisterRoute = true}, isClickable: true)

                Button(action: { VM.showLoginRoute = true }) {
                    Text("Zaloguj się")
                        .font(.headline)
                        .foregroundStyle(Color.dogPrimary)
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.dogPrimary, lineWidth: 1)
                        )
                }
            }
        }
        .padding(24)
        .background(Color.dogBackground)
        .fullScreenCover(isPresented: $VM.showRegisterRoute) {
            RegisterMethodView()
        }
        .fullScreenCover(isPresented: $VM.showLoginRoute) {
            LoginView()
        }
    }
}

