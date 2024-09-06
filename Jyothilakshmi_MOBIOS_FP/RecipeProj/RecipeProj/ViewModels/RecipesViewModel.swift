//
//  RecipesViewModel.swift
//  RecipeProj
//
//  Created by user265235 on 9/4/24.
//

import Foundation

class RecipesViewModel: ObservableObject {
   @Published private(set) var recipes: [Recipe] = []
    
    init(){
        recipes = Recipe.all
        
    }
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
