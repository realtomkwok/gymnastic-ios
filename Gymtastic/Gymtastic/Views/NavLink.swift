//
//  NavLink.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/11/23.
//

import SwiftUI

struct NavLink<Label: View, Destination: View>: View {
    let destination: Destination
    let label: Label
    
    init(destination: Destination, @ViewBuilder label: () -> Label) {
        self.destination = destination
        self.label = label() //ViewBuilder function
    }
    
    var body: some View {
        NavigationLink(
            destination:
                NavBarContainerView(content: {
                    destination
                    
                })
                .toolbar(.hidden)
            ,
            label: {
                label
            })
    }
}

struct NavLink_Previews: PreviewProvider {
    static var previews: some View {
        NavView {
            NavLink(destination: Text("Destination")) {
                Text("Navigate")
            }
        }
    }
}
