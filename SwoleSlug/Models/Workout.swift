//
//  Workout.swift
//  SwoleSlug
//
//  Created by Saul Gomez on 1/30/25.
//
import SwiftData
import Foundation

@Model
class Workout {
    var id: UUID = UUID()
    var name: String
    var date: Date
    var exercises: [Exercise]
    
    init(name: String, date: Date, exercises: [Exercise]) {
        self.name = name
        self.date = date
        self.exercises = exercises
    }
}

