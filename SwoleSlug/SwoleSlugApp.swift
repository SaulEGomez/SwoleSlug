//
//  SwoleSlugApp.swift
//  SwoleSlug
//
//  Created by Saul Gomez on 1/30/25.
//

import SwiftUI
import Amplify
import AWSCognitoAuthPlugin
import AWSAPIPlugin
import AWSDataStorePlugin
import AWSS3StoragePlugin

@main
struct SwoleSlugApp: App {
    init() {
        configureAmplify()
    }
    
    func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: AmplifyModels()))
            try Amplify.add(plugin: AWSDataStorePlugin(modelRegistration: AmplifyModels()))
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.configure()
            print("✅ Amplify configured successfully")
        } catch {
            print("❌ Failed to initialize Amplify: \(error)")
        }
    }

    var body: some Scene {
        WindowGroup {
            WorkoutListView()
        }
    }
}

