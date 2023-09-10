//
//  StartView.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/9/23.
//

import SwiftUI

struct StartView: View {
    let routines: [Routine]
    
    var body: some View {
        NavigationStack {
            TimelineView(routines: routines)
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(routines: Routine.sampleData)
    }
}
