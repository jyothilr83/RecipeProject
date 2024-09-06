import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    @State private var name: String = ""
    @State private var selectedCategory: Category = .main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var instructions: String = ""
    @State private var recipeToNavigateTo: Recipe?
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Instructions")) {
                    TextEditor(text: $instructions)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(
                        destination: RecipeView(recipe: recipeToNavigateTo ?? Recipe(name: "", image: "", description: "", ingredients: "", instructions: "", category: "", datePublished: "", url: "")),
                        isActive: .constant(recipeToNavigateTo != nil)
                    ) {
                        Button {
                            saveRecipe()
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        .disabled(name.isEmpty)
                    }
                }
            }
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private func saveRecipe() {
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd" // Ensure correct format for date
        
        let datePublished = dateFormatter.string(from: now)
        let newRecipe = Recipe(
            name: name,
            image: "", // Add default image path or URL if applicable
            description: description,
            ingredients: ingredients,
            instructions: instructions,
            category: selectedCategory.rawValue,
            datePublished: datePublished,
            url: "" // Add URL if applicable
        )
        recipesVM.addRecipe(recipe: newRecipe)
        recipeToNavigateTo = newRecipe // Set the recipe to navigate to
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
    }
}
