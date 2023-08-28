//
//  Routine.swift
//  gymtastic
//
//  Created by Tom Kwok on 8/28/23.
//

import Foundation

struct Routine: Hashable, Codable {
    var id: Int
    var name: String
    var calories: Int
    var duration: Int
    var date: Date
}
