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
        NavBarContainerView {
            VStack(spacing: 0) {
                ForEach(routines) { routine in
                    NavLink(destination: RoutineDetailView(routine: routine)) {
                        Card_TimelineView(routine: routine)
                    }
                }
            }
            .navTitle("Gymtastic")
            .navLargeTitle(false)
            .navBackButtonHidden(true)
            .navActionButtonHidden(true)
            .navBgColor(Color(uiColor: UIColor.systemBackground))
            .navAccentColor(Color(uiColor: UIColor.label))
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TimelineView(routines: Routine.sampleData)
        }
    }
}
