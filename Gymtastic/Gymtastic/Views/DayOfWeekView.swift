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
    let accentColor: Color
    let bgColor: Color
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(days) { day in
                dayButton__Inactive
            }
        }
        .frame(maxHeight: 55)
    }
}

struct DayOfWeekView_Previews: PreviewProvider {
    static var routine = Routine.sampleData[0]
    static var previews: some View {
        DayOfWeekView(
            routine: routine,
            accentColor: routine.theme.accentColor,
            bgColor: routine.theme.accentColor)
            .previewLayout(.fixed(width: 391, height: 60))
    }
}

extension DayOfWeekView {
    private var dayButton__Active: some View {
        Button("MON", action: {})
            .font(.subheadline.bold())
            .frame(width: 55, height: 55)
            .labelStyle(.titleOnly)
            .foregroundColor(accentColor)
            .colorInvert()
            .background(bgColor)
            .cornerRadius(500)
    }
    
    private var dayButton__Inactive: some View {
        Button("MON", action: {})
            .font(.subheadline.bold())
            .frame(width: 55, height: 55)
            .labelStyle(.titleOnly)
            .foregroundColor(accentColor)
            .colorInvert()
            .background(Color(uiColor: UIColor.quaternarySystemFill))
            .cornerRadius(500)
    }
}
