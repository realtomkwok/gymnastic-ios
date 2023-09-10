//
//  Card_RoutineView.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/9/23.
//

import SwiftUI

struct Card_RoutineView: View {
    let routine: Routine
    
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                Text(routine.title)
                    .font(.largeTitle)
                Spacer()
                HStack {
                    ForEach(routine.schedule.dayOfWeek) { day in
                        Text(day.rawValue)
                    }
                }
                .font(.subheadline)

            }
                .foregroundColor(routine.theme.accentColor)
            Spacer()
//            Button(action: {}) {
//                Label("Start", systemImage: "play.fill")
//            }
//                .frame(width: 50, height: 50)
//                .labelStyle(.iconOnly)
//                .foregroundColor(routine.theme.mainColor)
//                .background(routine.theme.accentColor)
//                .cornerRadius(500)
        }
            .padding()
            .background(routine.theme.mainColor)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.primary, lineWidth: 1)
            )
    }
}

struct Card_RoutineView_Previews: PreviewProvider {
    static var routine = Routine.sampleData[0]
    static var previews: some View {
        Card_RoutineView(routine: routine)
            .previewLayout(.fixed(width: 391, height: 191))
    }
}
