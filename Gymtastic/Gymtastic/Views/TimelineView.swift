//
//  TimelineView.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/10/23.
//

import SwiftUI

struct TimelineView: View {
    let routines: [Routine]
    var body: some View {
        List {
            ForEach(routines) { routine in
                Card_TimelineView(routine: routine)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
        }
            .listStyle(.plain)
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView(routines: Routine.sampleData)
    }
}
