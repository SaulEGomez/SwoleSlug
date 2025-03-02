//
//  ExerciseListView.swift
//  SwoleSlug
//
//  Created by Saul Gomez on 1/30/25.
//
import SwiftUI

struct ExerciseListView: View {
    let exercises = ["Bench Press", "Squat", "Deadlift", "Overhead Press"]

    var body: some View {
        NavigationView {
            List(exercises, id: \.self) { exercise in
                NavigationLink(destination: ExerciseDetailView(exerciseName: exercise)) {
                    Text(exercise)
                }
            }
            .navigationTitle("Exercise Library")
        }
    }
}

