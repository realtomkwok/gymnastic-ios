//
//  Card.swift
//  gymtastic
//
//  Created by Tom Kwok on 8/28/23.
//

import SwiftUI

struct Card_Routine__Today: View {
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 16) {
                Text("Biceps + \nTriceps + \nChest")
                    .font(Font.custom("SF Pro", size: 56))
                    .tracking(-0.4)
                    .foregroundColor(Color(uiColor: .label))
                HStack(alignment: .top, spacing: 4) {
                    Text("50min ·")
                    Text("500kcal ·")
                    Text("Tuesday, Friday")
                }
                .font(.subheadline)
                .foregroundColor(Color(uiColor: .secondaryLabel))
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            Button__Primary()
        }
        .padding(16)
        .background(Color(uiColor: .quaternarySystemFill))
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(uiColor: .label), lineWidth: 1)
        )
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card_Routine__Today()
    }
}
