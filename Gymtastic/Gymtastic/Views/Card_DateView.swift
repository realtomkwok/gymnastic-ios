//
//  Card_DateView.swift
//  Gymtastic
//
//  Created by Tom Kwok on 9/10/23.
//

import SwiftUI

struct Card_DateView: View {
    let routine: Routine
    
    func dateFormatter(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("dEEE")
        
        return formatter.string(from: date)
    }
        
    var body: some View {
        HStack{
            VStack {
                Text(dateFormatter(date: routine.schedule.nextDate))
                    .font(.largeTitle)
                Spacer()
            }
            Spacer()
        }
            .padding()
//            .background(.quaternary)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.primary, lineWidth: 1)
            )
            .foregroundColor(.primary)
    }
}

struct Card_DateView_Previews: PreviewProvider {
    static var routine = Routine.sampleData[0]
    static var previews: some View {
        Card_DateView(routine: routine)
            .previewLayout(.fixed(width: 391, height: 191))
    }
}
