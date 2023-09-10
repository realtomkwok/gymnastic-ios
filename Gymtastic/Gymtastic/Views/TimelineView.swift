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
                // fixed the chevron issue with NavigationLinks
                ZStack {
                    NavigationLink(destination: RoutineDetailView(routine: routine)) {
                        EmptyView()
                    }
//                        .buttonStyle(.plain)
                    Card_TimelineView(routine: routine)
                }
            }
            .listRowInsets(EdgeInsets())
            .listRowSeparator(.hidden)
        }
            .listStyle(.plain)
            .navigationTitle("Gymtastics")
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TimelineView(routines: Routine.sampleData)
        }
    }
}
