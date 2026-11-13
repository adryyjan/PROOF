//
//  AuthTextField.swift
//  PROOF
//
//  Created by Adrian Mazek on 13/11/2026.
//
import SwiftUI

struct AuthTextField: View {
    let placeholder: String
    var isSecure = false
    @Binding var text: String
    
    var body: some View {
        Group {
            if isSecure {
                SecureField(placeholder, text: $text)
            } else {
                TextField(placeholder, text: $text)
            }
        }
        .foregroundStyle(Color.dogTextPrimary)
        .authFieldStyle()
    }
}
