//
//  DayOfWeekView.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/11/23.
//

import SwiftUI

struct DayOfWeekView: View {
    let days: [DayOfWeek] = DayOfWeek.allCases
    let routine: Routine
    
    var body: some View {
        HStack(alignment: .center, spacing: 2) {
            ForEach(days) { day in
                Button(day.abbreviation.uppercased(), action: {})
                    .font(.subheadline.bold())
                    .frame(width: 50, height: 50)
                    .labelStyle(.titleOnly)
                    .foregroundColor(routine.theme.accentColor)
                    .colorInvert()
                    .background(routine.theme.accentColor)
                    .cornerRadius(500)
            }
        }
    }
}

struct DayOfWeekView_Previews: PreviewProvider {
    static var routine = Routine.sampleData[0]
    static var days = DayOfWeek.allCases
    static var previews: some View {
        DayOfWeekView(routine: routine)
            .previewLayout(.fixed(width: 391, height: 55))
    }
}
