//
//  AuthFieldStyle.swift
//  PROOF
//
//  Created by Adrian Mazek on 13/11/2026.
//

import Foundation
import SwiftUI

extension View {
    func authFieldStyle() -> some View {
        self
            .padding(.horizontal, 12)
            .frame(height: 44)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.dogBorder, lineWidth: 1)
            )
    }
}
