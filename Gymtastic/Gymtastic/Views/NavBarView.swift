//
//  NavBarView.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/11/23.
//

import SwiftUI

struct NavBarView: View {
    @Environment(\.dismiss) private var dismiss
    let title: String
    let islargeTitle: Bool
    let showBackButton: Bool
    let showActionButton: Bool
    let actionButtonLabel: String
    let bgColor: Color
    let accentColor: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if showBackButton {
                    backButton
                }
                Spacer()
                if showActionButton {
                    actionButton
                }
            }
            .padding(.bottom)
            if islargeTitle {
                largeTitleSelection
                    .padding(.bottom)
            } else {
                defaultTitleSelection
                    .padding(.bottom)
            }
        }
        .padding()
        .background(bgColor)
        .foregroundColor(accentColor)
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            NavBarView(
                title: "Title here",
                islargeTitle: true,
                showBackButton: true,
                showActionButton: true,
                actionButtonLabel: "Edit",
                bgColor: Color.teal,
                accentColor: Color.black
            )
                .previewLayout(.fixed(width: 393, height: 115))
            Spacer()
        }
    }
}

extension NavBarView {
    private var backButton: some View {
        Button(action: {dismiss()}, label: {Image(systemName: "chevron.left")})
    }
    
    private var actionButton: some View {
        Button(action: {}, label: {Text("\(actionButtonLabel)")})
            .fontWeight(.semibold)
    }
    
    private var largeTitleSelection: some View {
        Text(title)
            .font(.system(size: 64))
            .tracking(-1)
    }
    
    private var defaultTitleSelection: some View {
        Text(title)
            .font(.largeTitle)
    }
}
