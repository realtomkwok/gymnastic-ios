//
//  NavBarContainer.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/11/23.
//

import SwiftUI

struct NavBarContainerView<Content: View>: View {
    let content: Content
    @State private var title: String = ""
    @State private var islargeTitle: Bool = true
    @State private var showBackButton: Bool = true
    @State private var showActionButton: Bool = true
    @State private var actionButtonLabel: String = ""
    @State private var bgColor: Color = Color.white
    @State private var accentColor: Color = Color.black

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            NavBarView(
                title: title,
                islargeTitle: islargeTitle,
                showBackButton: showBackButton,
                showActionButton: showActionButton,
                actionButtonLabel: actionButtonLabel,
                bgColor: bgColor,
                accentColor: accentColor
            )
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(NavBarTitlePreferenceKey.self, perform: { value in
            self.title = value
        })
        .onPreferenceChange(NavBarLargeTitlePreferenceKey.self, perform: { value in
            self.islargeTitle = value
        })
        .onPreferenceChange(NavBarBackButtonHiddenPreferenceKey.self, perform: { value in
            self.showBackButton = !value
        })
        .onPreferenceChange(NavBarActionButtonHiddenPreferenceKey.self, perform: { value in
            self.showActionButton = !value
        })
        .onPreferenceChange(NavBarActionButtonLabelPrefernceKey.self, perform: { value in
            self.actionButtonLabel = value
        })
        .onPreferenceChange(NavBarBgColorPreferenceKey.self, perform: { value in
            self.bgColor = value
        })
        .onPreferenceChange(NavBarAccentColorPreferenceKey.self, perform: { value in
            self.accentColor = value
        })
    }
}

struct NavBarContainerView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarContainerView {
            ZStack {
                Color.secondary.ignoresSafeArea()
                Text("Hello, world")
                    .navigationTitle("New Title")
            }
        }
    }
}
