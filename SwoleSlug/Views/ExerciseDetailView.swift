//
//  ExerciseDetailView.swift
//  SwoleSlug
//
//  Created by Saul Gomez on 1/30/25.
//
import SwiftUI

struct ExerciseDetailView: View {
    let exerciseName: String

    var body: some View {
        VStack {
            Text(exerciseName)
                .font(.title)
                .bold()
            Text("Exercise details go here...")
                .padding()
        }
    }
}

