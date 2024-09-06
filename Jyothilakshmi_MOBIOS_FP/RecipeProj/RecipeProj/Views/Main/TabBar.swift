//
//  TabBar.swift
//  RecipeProj
//
//  Created by user265235 on 8/28/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home",systemImage: "house")
                }
            
            
            CategoriesView()
                .tabItem {
                    Label("Categories",systemImage: "square.fill.text.grid.1x2")
                }

            
            FavoritesView()
                .tabItem {
                    Label("Favorites",systemImage: "heart")
                }

            
            NewRecipeView()
                .tabItem {
                    Label("New",systemImage: "plus")
                }

            
            SettingsView()
                .tabItem {
                    Label("Settings",systemImage: "gear")
                }

        }
    }
}

struct TabBar_Previews: PreviewProvider{
   
    static var previews: some View{
        TabBar()
            .environmentObject(RecipesViewModel())
    }
    }
