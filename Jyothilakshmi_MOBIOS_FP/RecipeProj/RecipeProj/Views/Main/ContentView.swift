//
//  ContentView.swift
//  RecipeProj
//
//  Created by user265235 on 8/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
            TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View{
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
