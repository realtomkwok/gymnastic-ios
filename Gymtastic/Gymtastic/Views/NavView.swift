//
//  NavView.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/11/23.
//

import SwiftUI

struct NavView<Content:View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        NavigationView {
            NavBarContainerView {
                content
            }
            .toolbar(.hidden)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView {
            Color.orange.ignoresSafeArea()
        }
    }
}
