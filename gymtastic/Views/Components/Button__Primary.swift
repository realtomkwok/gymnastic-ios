//
//  Button_Primary.swift
//  gymtastic
//
//  Created by Tom Kwok on 8/28/23.
//

import SwiftUI

struct Button__Primary: View {
    var body: some View {
        Button(action: {}){
            Label("Play", systemImage: "play.fill")
                .labelStyle(.iconOnly)
                .buttonStyle(.automatic)
                .padding()
                .background(Color(uiColor: .label))
                .foregroundColor(Color(uiColor: .systemBackground))
                .cornerRadius(500)
        }
    }
}

struct Button_Primary_Previews: PreviewProvider {
    static var previews: some View {
        Button__Primary()
    }
}
