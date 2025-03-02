//
//  UserSettings.swift
//  SwoleSlug
//
//  Created by Saul Gomez on 1/30/25.
//
import Foundation

class UserSettings: ObservableObject {
    @Published var useMetric: Bool {
        didSet { UserDefaults.standard.set(useMetric, forKey: "useMetric") }
    }

    @Published var enableProgression: Bool {
        didSet { UserDefaults.standard.set(enableProgression, forKey: "enableProgression") }
    }

    @Published var weeklyWorkoutGoal: Int {
        didSet { UserDefaults.standard.set(weeklyWorkoutGoal, forKey: "weeklyWorkoutGoal") }
    }

    init() {
        self.useMetric = UserDefaults.standard.bool(forKey: "useMetric")
        self.enableProgression = UserDefaults.standard.bool(forKey: "enableProgression")
        self.weeklyWorkoutGoal = UserDefaults.standard.integer(forKey: "weeklyWorkoutGoal")
    }
}

