//
//  AppColors.swift
//  PROOF
//
//  Created by Adrian Mazek on 07/04/2026.
//

import SwiftUI


private extension Color {
    init(light: Color, dark: Color) {
        self.init(UIColor { traits in
            traits.userInterfaceStyle == .dark
                ? UIColor(dark)
                : UIColor(light)
        })
    }
}

//copy from GPT
private func hex(_ hex: String) -> Color {
    var h = hex.trimmingCharacters(in: .init(charactersIn: "#"))
    if h.count == 3 { h = h.map { "\($0)\($0)" }.joined() }
    guard h.count == 6, let value = UInt64(h, radix: 16) else { return .clear }
    return Color(
        red:   Double((value >> 16) & 0xFF) / 255,
        green: Double((value >> 8) & 0xFF) / 255,
        blue:  Double( value & 0xFF) / 255
    )
}


extension Color {

    static let dogPrimary = Color(light: hex("7F77DD"), dark: hex("AFA9EC"))
    static let dogPrimaryDark = Color(light: hex("3C3489"), dark: hex("3C3489"))
    static let dogPrimaryLight = Color(light: hex("EEEDFE"), dark: hex("3C3489"))

    static let dogBackground = Color(light: hex("FFFFFF"), dark: hex("1A1A18"))
    static let dogSurface = Color(light: hex("F1EFE8"), dark: hex("242422"))

    static let dogTextPrimary = Color(light: hex("2C2C2A"), dark: hex("D3D1C7"))
    static let dogTextSecondary = Color(light: hex("5F5E5A"), dark: hex("888780"))
    static let dogTextTertiary = Color(light: hex("B4B2A9"), dark: hex("5F5E5A"))

    static let dogBorder = Color(light: hex("D3D1C7"), dark: hex("444441"))

    static let choreesBackground = Color(light: hex("E1F5EE"), dark: hex("085041"))
    static let choreesAccent = Color(light: hex("1D9E75"), dark: hex("5DCAA5"))
    static let choreesText = Color(light: hex("085041"), dark: hex("9FE1CB"))

    static let pastimeBackground = Color(light: hex("E6F1FB"), dark: hex("0C447C"))
    static let pastimeAccent = Color(light: hex("378ADD"), dark: hex("85B7EB"))
    static let pastimeText = Color(light: hex("0C447C"), dark: hex("B5D4F4"))

    static let uniBackground = Color(light: hex("FAEEDA"), dark: hex("633806"))
    static let uniAccent = Color(light: hex("BA7517"), dark: hex("EF9F27"))
    static let uniText = Color(light: hex("633806"), dark: hex("FAC775"))

    static let otherBackground = Color(light: hex("FBEAF0"), dark: hex("72243E"))
    static let otherAccent = Color(light: hex("D4537E"), dark: hex("ED93B1"))
    static let otherText = Color(light: hex("72243E"), dark: hex("F4C0D1"))
}
