//
//  WorkoutListView.swift
//  SwoleSlug
//
//  Created by Saul Gomez on 1/30/25.
//
import SwiftUI
import SwiftData

struct WorkoutListView: View {
    @Environment(\.modelContext) private var context
    @StateObject private var viewModel = WorkoutViewModel() // ✅ No need to pass context manually

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.workouts) { workout in
                    NavigationLink(destination: WorkoutDetailView(workout: workout)) {
                        Text(workout.name)
                    }
                }
                .onDelete { indexSet in
                    indexSet.forEach { index in
                        viewModel.deleteWorkout(workout: viewModel.workouts[index])
                    }
                }
            }
            .navigationTitle("Workouts")
            .toolbar {
                ToolbarItemGroup {
                    NavigationLink(destination: SettingsView()) {
                        Label("Settings", systemImage: "gearshape")
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetchWorkouts() // ✅ Load data when the view appears
        }
    }
}



