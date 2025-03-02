//
//  WorkoutViewModel.swift
//  SwoleSlug
//
//  Created by Saul Gomez on 1/30/25.
//
import SwiftData
import Foundation

class WorkoutViewModel: ObservableObject {
    @Published var workouts: [Workout] = []
    private var context: ModelContext

    init(context: ModelContext) {
        self.context = context
        fetchWorkouts()
    }

    func fetchWorkouts() {
        let descriptor = FetchDescriptor<Workout>()
        do {
            workouts = try context.fetch(descriptor)
        } catch {
            print("Error fetching workouts: \(error)")
        }
    }

    func addWorkout(name: String) {
        let newWorkout = Workout(name: name, date: Date(), exercises: [])
        context.insert(newWorkout)
        fetchWorkouts()
    }

    func deleteWorkout(workout: Workout) {
        context.delete(workout)
        fetchWorkouts()
    }
}
