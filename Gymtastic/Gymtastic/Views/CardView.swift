//
//  CardView.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/9/23.
//

import SwiftUI

struct CardView: View {
    let routine: Routine
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(routine.title)
                    .font(.largeTitle)
                Spacer()
                HStack {
                    ForEach(routine.dayOfWeek) { day in
                        Text(day.rawValue + ",")
                    }
                }
                .font(.subheadline)
                .foregroundColor(routine.theme.accentColor)
            }
            .padding()
            Spacer()
            Button(action: {}) {
                Label {
                    Text("Start")
                        .font(.body)
                        .foregroundColor(.primary)
                } icon: {
                    Circle()
                        .fill(.black)
                        .frame(width: 50, height: 50, alignment: .center)
                        .overlay(Image(systemName: "play.fill"))
                        .foregroundColor(routine.theme.mainColor)
                }
            }
            .labelStyle(.iconOnly)

        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var routine = Routine.sampleData[0]
    static var previews: some View {
        CardView(routine: routine)
            .background(routine.theme.mainColor)
            .previewLayout(.fixed(width: 391, height: 191))
    }
}
