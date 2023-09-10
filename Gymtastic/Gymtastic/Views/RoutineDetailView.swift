//
//  RoutineDetailView.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/10/23.
//

import SwiftUI

struct RoutineDetailView: View {
    let routine: Routine
    
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text(routine.title)
                    .font(.system(size: 64))
                    .tracking(-1)
   
            }
                .padding()
                .frame(minHeight: 200)
            Group {
                HStack {
                    Text("Exercises")
                        .font(.title3)
                    Spacer()
                    Button(action: {}) {
                        Label("Add", systemImage: "plus.circle")
                            .labelStyle(.iconOnly)
                    }
                    .buttonStyle(.borderless)
                }
                .padding()
                VStack(spacing: 0) {
                    ForEach(routine.exercises) { exercise in
                        ZStack {
                            NavigationLink(destination: {}) {
                                EmptyView()
                            }
                            List_ItemView(exercise: exercise)
                        }
                    }
                }
            }
            Spacer()
        }
        .foregroundColor(routine.theme.accentColor)
        .background(routine.theme.mainColor)
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Edit", action: {})
            }
        }
        .foregroundColor(routine.theme.accentColor)
        
    }
}

struct RoutineDetailView_Previews: PreviewProvider {
    static var routine = Routine.sampleData[0]
    static var previews: some View {
        NavigationStack {
            RoutineDetailView(routine: routine)
        }
    }
}
