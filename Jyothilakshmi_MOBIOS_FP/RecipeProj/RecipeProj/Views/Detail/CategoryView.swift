//
//  CategoryView.swift
//  RecipeProj
//
//  Created by user265235 on 9/4/24.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var category: Category
    
    var recipes: [Recipe]{
        return recipesVM.recipes.filter{ $0.category == category.rawValue }
    }
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue )
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
            .environmentObject(RecipesViewModel())
    }
}
