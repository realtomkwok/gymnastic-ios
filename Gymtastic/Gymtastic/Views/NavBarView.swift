//
//  NavBarView.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/11/23.
//

import SwiftUI

struct NavBarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                backButton
                Spacer()
                Button(action: {}, label: {Text("Button")})
            }
            .padding(.bottom)
            Text("Title")
                .font(.system(size: 64))
        }
        .padding()
        .background(
            Color.teal.ignoresSafeArea(edges: .top)
        )
        .foregroundColor(.black)
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            NavBarView()
                .previewLayout(.fixed(width: 393, height: 115))
            Spacer()
        }
    }
}

extension NavBarView {
    private var backButton: some View {
        Button(action: {}, label: {Image(systemName: "chevron.left")})
    }
}
