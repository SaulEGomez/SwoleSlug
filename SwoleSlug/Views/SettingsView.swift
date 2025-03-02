//
//  SettingsView.swift
//  SwoleSlug
//
//  Created by Saul Gomez on 1/30/25.
//
import SwiftUI

struct SettingsView: View {
    @ObservedObject var settings = UserSettings()
    @AppStorage("darkMode") private var darkMode = false 

    var body: some View {
        Form {
            Section(header: Text("Preferences")) {
                Toggle("Use Metric Units (kg)", isOn: $settings.useMetric)
                Toggle("Enable Progression Tracking", isOn: $settings.enableProgression)
            }

            Section(header: Text("Goals")) {
                Stepper(value: $settings.weeklyWorkoutGoal, in: 1...10) {
                    Text("Weekly Workout Goal: \(settings.weeklyWorkoutGoal) times")
                }
            }

            Section(header: Text("Appearance")) {
                Toggle("Dark Mode", isOn: $darkMode)
            }

            Section {
                Button(action: resetSettings) {
                    Text("Reset to Default")
                        .foregroundColor(.red)
                }
            }
        }
        .navigationTitle("Settings")
    }

    func resetSettings() {
        settings.useMetric = false
        settings.enableProgression = true
        settings.weeklyWorkoutGoal = 3
        darkMode = false
    }
}

