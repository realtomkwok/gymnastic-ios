//
//  NavBarPreferenceKey.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/11/23.
//

import Foundation
import SwiftUI

struct NavBarTitlePreferenceKey: PreferenceKey {
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct NavBarLargeTitlePreferenceKey: PreferenceKey {
    static var defaultValue: Bool = true
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

struct NavBarBackButtonHiddenPreferenceKey: PreferenceKey {
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

struct NavBarActionButtonHiddenPreferenceKey: PreferenceKey {
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

struct NavBarActionButtonLabelPrefernceKey: PreferenceKey {
    static var defaultValue: String = "Button"
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct NavBarBgColorPreferenceKey: PreferenceKey {
    static var defaultValue: Color = Color.white
    
    static func reduce(value: inout Color, nextValue: () -> Color) {
        value = nextValue()
    }
}

struct NavBarAccentColorPreferenceKey: PreferenceKey {
    static var defaultValue: Color = Color.black
    
    static func reduce(value: inout Color, nextValue: () -> Color) {
        value = nextValue()
    }
}


extension View {
    func navTitle(_ title: String) -> some View {
        preference(key: NavBarTitlePreferenceKey.self, value: title)
    }
    
    func navLargeTitle(_ isLargeTitle: Bool) -> some View {
        preference(key: NavBarLargeTitlePreferenceKey.self, value: isLargeTitle)
    }
    
    func navBackButtonHidden(_ hidden: Bool) -> some View {
        preference(key: NavBarBackButtonHiddenPreferenceKey.self, value: hidden)
    }

    func navActionButtonHidden(_ hidden: Bool) -> some View {
        preference(key: NavBarActionButtonHiddenPreferenceKey.self, value: hidden)
    }
    
    func navActionButtonLabel(_ label: String) -> some View {
        preference(key: NavBarActionButtonLabelPrefernceKey.self, value: label)
    }
    
    func navBgColor(_ bgColor: Color) -> some View {
        preference(key: NavBarBgColorPreferenceKey.self ,value: bgColor)
    }
    
    func navAccentColor(_ accentColor: Color) -> some View {
        preference(key: NavBarAccentColorPreferenceKey.self ,value: accentColor)
    }
    
    func navBarItems(
        title: String = "",
        isLargeTitle: Bool = true,
        backButtonHidden: Bool = false,
        actionButtonHidden: Bool = false,
        actionButtonLabel: String = "Button",
        bgColor: Color = Color.white,
        accentColor: Color = Color.black
    ) -> some View {
        self
            .navTitle(title)
            .navLargeTitle(isLargeTitle)
            .navBackButtonHidden(backButtonHidden)
            .navActionButtonHidden(actionButtonHidden)
            .navActionButtonLabel(actionButtonLabel)
            .navBgColor(bgColor)
            .navAccentColor(accentColor)
    }
}
