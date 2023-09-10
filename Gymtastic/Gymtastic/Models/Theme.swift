//
//  Theme.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/9/23.
//

import SwiftUI

enum Theme: String {
    case red
    case orange
    case yellow
    case green
    case mint
    case teal
    case cyan
    case blue
    case indigo
    case purple
    case pink
    case brown
    
    var accentColor: Color {
        switch self {
        case .red, .blue, .indigo, .purple, .brown: return .white
        case .orange, .yellow, .green, .mint, .teal, .cyan, .pink: return .black
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
}
