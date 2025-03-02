//
//  Exercise.swift
//  SwoleSlug
//
//  Created by Saul Gomez on 1/30/25.
//
import SwiftData
import Foundation

@Model
class Exercise {
    var name: String
    var weight: Double
    var reps: Int
    var sets: Int
    
    init(name: String, weight: Double, reps: Int, sets: Int) {
        self.name = name
        self.weight = weight
        self.reps = reps
        self.sets = sets
    }
}
