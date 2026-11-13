//
//  AboutPersonView.swift
//  PROOF
//
//  Created by Adrian Mazek on 11/11/2026.
//

import SwiftUI

struct AboutPersonView: View {
    @Bindable var VM: RegisterViewModel
    @State private var gender: Gender?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

                    ScreenHeader(title: "Kontakt i profil", subtitle: "Krok 3 z 4")
                       

            AuthTextField(placeholder: "Numer telefonu", text: $VM.draft.phoneNumber)
                        .keyboardType(.phonePad)

                    Button {
//                        TO DO - ustawic date poprzez DatePicker
                        VM.draft.birthDate = Date()
                    } label: {
                        HStack {
                            Text("DD.MM.RRRR")
                                .foregroundStyle(Color.dogTextTertiary)
                            Spacer()
                            Image(systemName: "calendar")
                                .foregroundStyle(Color.dogTextSecondary)
                        }
                        .authFieldStyle()
                    }

                    Text("Płeć")
                        .font(.subheadline)
                        .foregroundStyle(Color.dogTextSecondary)

                        HStack(spacing: 8) {
                            ForEach(Gender.allCases, id: \.self) { option in
                                Button { gender = option } label: {
                                    Text(label(for: option))
                                        .font(.subheadline)
                                        .foregroundStyle(gender == option ? Color.dogPrimary : Color.dogTextSecondary)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 40)
                                        .background(
                                            gender == option ? Color.dogPrimaryLight : Color.clear,
                                            in: RoundedRectangle(cornerRadius: 10)
                                        )
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(gender == option ? Color.dogPrimary : Color.dogBorder, lineWidth: 1)
                                        )
                                }
                                .buttonStyle(.plain)
                        }
                    }

                    PrimaryButton(title: "Dalej", isClickable: VM.canGoNext){
                        VM.draft.gender = gender
                        VM.next()
                    }

                    Spacer()
                }
                .padding(24)

            }

            private func label(for gender: Gender) -> String {
                switch gender {
                case .female: return "Kobieta"
                case .male:   return "Mężczyzna"
                case .other:  return "Inna"
                }
            }
    }

