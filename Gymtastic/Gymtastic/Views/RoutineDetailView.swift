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
        
        ZStack {
            routine.theme.mainColor.ignoresSafeArea()
            
            VStack() {
                DayOfWeekView(routine: routine, accentColor: routine.theme.accentColor, bgColor: Color)
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
            
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Edit", action: {})
                }
            }
        }
        .navBarItems(
            title: routine.title,
            actionButtonLabel: "Edit",
            bgColor: routine.theme.mainColor,
            accentColor: routine.theme.accentColor
        )
    }
}

struct RoutineDetailView_Previews: PreviewProvider {
    static var routine = Routine.sampleData[0]
    static var previews: some View {
        NavBarContainerView {
            RoutineDetailView(routine: routine)
        }
    }
}
