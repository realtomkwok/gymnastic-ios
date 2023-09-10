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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
