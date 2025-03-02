//
//  ExerciseViewModel.swift
//  SwoleSlug
//
//  Created by Saul Gomez on 1/30/25.
//
import SwiftData
import Foundation

class ExerciseViewModel: ObservableObject {
    @Published var exercises: [Exercise] = []
    private var context: ModelContext

    init(context: ModelContext) {
        self.context = context
        fetchExercises()
    }

    func fetchExercises() {
        let descriptor = FetchDescriptor<Exercise>()
        do {
            exercises = try context.fetch(descriptor)
        } catch {
            print("Error fetching exercises: \(error)")
        }
    }

    func addExercise(name: String, weight: Double, reps: Int, sets: Int) {
        let newExercise = Exercise(name: name, weight: weight, reps: reps, sets: sets)
        context.insert(newExercise)
        fetchExercises()
    }

    func deleteExercise(exercise: Exercise) {
        context.delete(exercise)
        fetchExercises()
    }
}

