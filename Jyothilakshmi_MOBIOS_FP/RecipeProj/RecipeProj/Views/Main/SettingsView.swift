//
//  SettingsView.swift
//  RecipeProj
//
//  Created by user265235 on 8/28/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v1.0.0")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}
struct SettingsView_Previews: PreviewProvider{
   
    static var previews: some View{
        SettingsView()
    }
    }
