//
//  FABView.swift
//  PROOF
//
//  Created by Adrian Mazek on 16/04/2026.
//

import SwiftUI

struct FABView: View {
    
    
    var body: some View {
        Button {
            print("CLIKC")
        } label: {
            Image(systemName: "plus")
                .font(.system(size: 22, weight: .bold))
                .foregroundStyle(.white)
                .frame(width: 56, height: 56)
                .background(Color.dogPrimary.opacity(0.95))
                .background(.ultraThinMaterial)
                .clipShape(Circle())
                .shadow(radius: 8)
        }
        .padding(.trailing, 20)
        .padding(.bottom, 10)
    }
}
