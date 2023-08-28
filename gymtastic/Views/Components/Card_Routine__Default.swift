//
//  Card_Routine__Default.swift
//  gymtastic
//
//  Created by Tom Kwok on 8/28/23.
//

import SwiftUI

struct Card_Routine__Default: View {
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            VStack(alignment: .leading) {
                Text("Fri 25")
                    .font(.largeTitle)
                    .foregroundColor(Color(uiColor: .label))
                Spacer()
            }
            .padding(16)
            .frame(maxHeight: .infinity)
            .background(Color(uiColor: .quaternarySystemFill))
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(uiColor: .label), lineWidth: 1)
            )
            HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                    Text("Biceps + \nTriceps + \nChest")
                        .font(.largeTitle)
                        .foregroundColor(Color(uiColor: .label))
                    Spacer()
                    HStack(alignment: .top, spacing: 4) {
                        Text("50min ·")
                        Text("500kcal ·")
                        Text("Tuesday, Friday")
                    }
                    .font(.subheadline)
                    .foregroundColor(Color(uiColor: .secondaryLabel))
                    
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(16)
            .frame(maxHeight: .infinity)
            .background(Color(uiColor: .quaternarySystemFill))
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(uiColor: .label), lineWidth: 1)
            )
        }
        .frame(maxHeight: 192)
    }
}

struct Card_Routine__Default_Previews: PreviewProvider {
    static var previews: some View {
        Card_Routine__Default()
    }
}
