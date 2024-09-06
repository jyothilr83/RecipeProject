//
//  RecipeCard.swift
//  RecipeProj
//
//  Created by user265235 on 8/30/24.
import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    
    var body: some View {
        VStack {
            // Display the image
            if let image = UIImage(named: recipe.image) {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 190) // Adjust the height as needed
                    .clipped() // Ensures image does not overflow the frame
            } else {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150, alignment: .center) // Adjust size as needed
                    .foregroundColor(.white.opacity(0.7))
            }
            
            // Display the recipe name
            Text(recipe.name)
                .font(.headline)
                
                .lineLimit(2) // Limit lines to avoid text overflow
                .padding([.leading, .trailing, .bottom], 8) // Add padding around text
                .frame(maxWidth: .infinity, alignment: .leading) // Align text to the leading edge
        }
        .frame(width: 160, height: 217) // Card dimensions
        .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3), Color.gray]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}


struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[1])
    }
}

