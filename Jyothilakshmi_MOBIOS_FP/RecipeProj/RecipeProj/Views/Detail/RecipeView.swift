//
//  RecipeView.swift
//  RecipeProj
//
//  Created by user265235 on 9/3/24.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack {
                // Display the image
                if let image = UIImage(named: recipe.image) {
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 300)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.gray.opacity(0.3), Color.gray]),
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                } else {
                    // Placeholder image
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.white.opacity(0.7))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                VStack(spacing: 30){
                    Text(recipe.name)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    VStack(alignment: .leading, spacing: 30) {
                        if !recipe.description.isEmpty {
                            Text(recipe.description)
                        }                        
                        VStack(alignment: .leading, spacing: 20)
                        {
                            Text("Ingredients")
                                .font(.headline)
                                .bold()
                            
                            Text(recipe.ingredients)
                        }
                        VStack(alignment: .leading, spacing: 20)
                        {
                            Text("Instructions")
                                .font(.headline)
                                .bold()
                            
                            Text(recipe.instructions)
                                .font(.title3)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal)
            }
            .ignoresSafeArea(.container, edges: .top)
        }
    }
}

struct RecipeView_Preview: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
