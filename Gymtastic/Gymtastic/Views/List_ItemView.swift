//
//  List_ItemView.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/10/23.
//

import SwiftUI

struct List_ItemView: View {
    let exercise: Routine.Exercise
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 4) {
                Text(exercise.name)
                    .font(.body)
                HStack {
                    Text("\(exercise.set) sets" + " ·")
                    Text("\(exercise.rep) reps" + " ·")
                    Text("\(Int(exercise.weight)) kg" + " ·")
                    Text("\(exercise.secondsBetweenSets)secs rests")
                }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: 320, alignment: .leading)
            Spacer()
        }
        .padding()
        .background(.quaternary)
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(.primary, lineWidth: 1)
        )
    }
}

struct List_ItemView_Previews: PreviewProvider {
    static var exercise = Routine.sampleData[0].exercises[0]
    static var previews: some View {
        List_ItemView(exercise: exercise)
            .previewLayout(.fixed(width: 391, height: 80))
    }
}
