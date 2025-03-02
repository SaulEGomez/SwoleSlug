//
//  WorkoutDetailView.swift
//  SwoleSlug
//
//  Created by Saul Gomez on 1/30/25.
//
import SwiftUI

struct WorkoutDetailView: View {
    let workout: Workout

    var body: some View {
        VStack {
            Text("Workout: \(workout.name)")
                .font(.title)
                .bold()
            Text("Date: \(workout.date, format: .dateTime)")
                .foregroundColor(.gray)
        }
        .padding()
    }
}

