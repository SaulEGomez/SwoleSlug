//
//  LogWorkoutView.swift
//  SwoleSlug
//
//  Created by Saul Gomez on 1/30/25.
//
import SwiftUI

struct LogWorkoutView: View {
    @Environment(\.modelContext) private var context
    @State private var workoutName = ""

    var body: some View {
        VStack {
            TextField("Workout Name", text: $workoutName)
                .textFieldStyle(.roundedBorder)
                .padding()

            Button("Save Workout") {
                let newWorkout = Workout(name: workoutName, date: Date(), exercises: [])
                context.insert(newWorkout)
            }
            .padding()
        }
    }
}

