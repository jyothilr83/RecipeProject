//
//  RecipeProjApp.swift
//  RecipeProj
//
//  Created by user265235 on 8/28/24.
//

import SwiftUI

@main
struct RecipeProjApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
