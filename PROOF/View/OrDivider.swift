//
//  OrView.swift
//  PROOF
//
//  Created by Adrian Mazek on 13/11/2026.
//

import SwiftUI

struct OrDivider: View {
    var body: some View {
        HStack(spacing: 12) {
            Rectangle().fill(Color.dogBorder).frame(height: 1)
            Text("lub")
                .font(.footnote)
                .foregroundStyle(Color.dogTextTertiary)
            Rectangle().fill(Color.dogBorder).frame(height: 1)
        }
    }
}
