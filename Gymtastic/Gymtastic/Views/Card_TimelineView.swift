//
//  Card_TimelineView.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/10/23.
//

import SwiftUI

struct Card_TimelineView: View {
    let routine: Routine
    
    var body: some View {
        HStack(spacing: 0) {
            Card_DateView(routine: routine)
                .frame(minWidth: 157, maxWidth: 157, maxHeight: .infinity, alignment: .topLeading)
            Card_RoutineView(routine: routine)
                .frame(minWidth: 235, maxWidth: 235, maxHeight: .infinity, alignment: .bottom)

        }
            
    }
}

struct Card_TimelineView_Previews: PreviewProvider {
    static var routine = Routine.sampleData[0]
    static var previews: some View {
        Card_TimelineView(routine: routine)
            .previewLayout(.fixed(width: 391, height: 191))
    }
}
