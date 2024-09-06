//
//  CategoriesView.swift
//  RecipeProj
//
//  Created by user265235 on 8/28/24.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases) { category in
                    NavigationLink {
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue)
                }
            }
        }
        .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}
struct CategoriesView_Previews: PreviewProvider{
   
    static var previews: some View{
        CategoriesView()
    }
    }
