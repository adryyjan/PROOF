//
//  RegisterScreenContainer.swift
//  PROOF
//
//  Created by Adrian Mazek on 11/11/2026.
//

import Foundation
import SwiftUI

struct RegisterScreenContainer: View {
    
    @State private var VM = RegisterViewModel()
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack(spacing: 16) {
            HStack() {
                if VM.step != .credentisls {
                    Button {
                        VM.back()
                    } label: {
                        Image(systemName: "chevron.left")
                        Spacer()
                    }
                }
            }
            .padding(.vertical, 16)
            StepProgressView(currentStep: VM.progress)
            switch VM.step {
            case .credentisls: CredentialsView(VM: VM)
            case .aboutPearson: AboutPersonView(VM: VM)
            case .personalInfo: PersonalInfoVIew(VM: VM)
            case .summary: ConfirmationView(VM: VM, isLoggedIn: $isPresented)
            }
            Spacer()
        }
        .padding(16)
        .animation(.default, value: VM.step)
    }
}
