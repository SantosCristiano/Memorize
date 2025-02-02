//
//  ButtonStyles.swift
//  Memorize
//
//

import SwiftUI

struct FilledButtonStyle: ButtonStyle {
    var backgroundColor: Color
    let cornerRadius:CGFloat = 10

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(20)
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                        .blendMode(.overlay)
                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                        .fill(backgroundColor)
                }
        )
            .foregroundColor(.primary)
    }
}
