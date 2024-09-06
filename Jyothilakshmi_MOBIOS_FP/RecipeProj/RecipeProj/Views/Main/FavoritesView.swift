//
//  FavoritesView.swift
//  RecipeProj
//
//  Created by user265235 on 8/28/24.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You have not saved any recipe to your favorites list")
                .padding()
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
}
struct FavoritesView_Previews: PreviewProvider{
   
    static var previews: some View{
        FavoritesView()
    }
    }
