//
//  RecipeModel.swift
//  RecipeProj
//
//  Created by user265235 on 8/28/24.
//

import Foundation

enum Category: String, CaseIterable, Identifiable, Hashable {
    var id: String{self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
    
}

struct Recipe: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let instructions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe{
    static let all: [Recipe] = [
        Recipe(
            name: "Poori Bhaji",
            image: "PooriBhaji",
            description: "abcdefgh",
            ingredients: "2 cups all-purpose flour\n 3 tablespoons ghee or canola oil\n 1/2 teaspoon salt\n 1/2 teaspoon caraway seeds\n 3/4 cup cold water\n FILLING:\n 5 medium potatoes, peeled and chopped\n 6 tablespoons canola oil\n 1 cup fresh or frozen peas, thawed\n 1 teaspoon minced fresh gingerroot\n 1 teaspoon garam masala\n 1/2 teaspoon cumin seeds\n 1/2 teaspoon salt\n Optional: Fennel seeds, crushed coriander seeds, caraway seeds or amchur (dried mango powder) " ,
            instructions: "1. In a large bowl, combine flour, ghee, salt and caraway seeds until mixture resembles bread crumbs. Gradually stir in enough water to form a firm dough. Turn onto a lightly floured surface; knead until smooth and elastic, 6-8 minutes. Cover and let rest for 1 hour.\n 2. Place potatoes in a large saucepan and cover with water. Bring to a boil. Reduce heat and cook until just tender, 8-10 minutes; drain. Set aside to cool slightly. In a large skillet, heat 3 tablespoons oil over medium heat. Add potatoes and cook until potatoes start to cling to the skillet, about 5 minutes. Stir in peas, ginger, garam masala, cumin seeds and salt; cook until heated through, about 2 minutes. Stir in optional ingredients as desired. Set aside.\n 3. Divide dough into 6 pieces. Roll 1 piece of dough into a 10x6-in. oval. Cut dough in half. Moisten straight edge with water. Bring 1 corner of half moon up to meet the other corner of half moon, forming a cone. Pinch seam to seal. Fill with 3-4 tablespoons potato mixture. Moisten curved edge of dough with water; fold over top of filling and press seam to seal. Gently press the bottom of each samosa to flatten slightly. Repeat with remaining dough and filling.\n 4. Preheat air fryer to 350°. Brush the samosas with the remaining 3 tablespoons oil. In batches, arrange in a single layer, without touching, on tray in air-fryer basket. Cook until golden brown, about 15 minutes.",
            category: "Breakfast",
            datePublished: "28-Aug-2024",
            url: "https://www.tasteofhome.com/recipes/samosas/"
        ),
    Recipe(
        name: "Samosas",
        image: "Samosa",
        description: "abcdefgh",
        ingredients: "2 cups all-purpose flour\n 3 tablespoons ghee or canola oil\n 1/2 teaspoon salt\n 1/2 teaspoon caraway seeds\n 3/4 cup cold water\n FILLING:\n 5 medium potatoes, peeled and chopped\n 6 tablespoons canola oil\n         1 cup fresh or frozen peas, thawed\n 1 teaspoon minced fresh gingerroot\n 1 teaspoon garam masala\n 1/2 teaspoon cumin seeds\n 1/2 teaspoon salt\n Optional: Fennel seeds, crushed coriander seeds, caraway seeds or amchur (dried mango powder) " ,
        instructions: "1. In a large bowl, combine flour, ghee, salt and caraway seeds until mixture resembles bread crumbs. Gradually stir in enough water to form a firm dough. Turn onto a lightly floured surface; knead until smooth and elastic, 6-8 minutes. Cover and let rest for 1 hour.\n 2. Place potatoes in a large saucepan and cover with water. Bring to a boil. Reduce heat and cook until just tender, 8-10 minutes; drain. Set aside to cool slightly. In a large skillet, heat 3 tablespoons oil over medium heat. Add potatoes and cook until potatoes start to cling to the skillet, about 5 minutes. Stir in peas, ginger, garam masala, cumin seeds and salt; cook until heated through, about 2 minutes. Stir in optional ingredients as desired. Set aside.\n 3. Divide dough into 6 pieces. Roll 1 piece of dough into a 10x6-in. oval. Cut dough in half. Moisten straight edge with water. Bring 1 corner of half moon up to meet the other corner of half moon, forming a cone. Pinch seam to seal. Fill with 3-4 tablespoons potato mixture. Moisten curved edge of dough with water; fold over top of filling and press seam to seal. Gently press the bottom of each samosa to flatten slightly. Repeat with remaining dough and filling.\n 4. Preheat air fryer to 350°. Brush the samosas with the remaining 3 tablespoons oil. In batches, arrange in a single layer, without touching, on tray in air-fryer basket. Cook until golden brown, about 15 minutes.",
        category: "Snack",
        datePublished: "28-Aug-2024",
        url: "https://www.tasteofhome.com/recipes/samosas/"
    ),
    Recipe(
        name: "Chicken Biriyani",
        image: "ChickenBiriyani",
        description: "abcdefgh",
        ingredients: "2 cups all-purpose flour\n 3 tablespoons ghee or canola oil\n 1/2 teaspoon salt\n 1/2 teaspoon caraway seeds\n 3/4 cup cold water\n FILLING:\n 5 medium potatoes, peeled and chopped\n 6 tablespoons canola oil\n         1 cup fresh or frozen peas, thawed\n 1 teaspoon minced fresh gingerroot\n 1 teaspoon garam masala\n 1/2 teaspoon cumin seeds\n 1/2 teaspoon salt\n Optional: Fennel seeds, crushed coriander seeds, caraway seeds or amchur (dried mango powder) " ,
        instructions: "1. In a large bowl, combine flour, ghee, salt and caraway seeds until mixture resembles bread crumbs. Gradually stir in enough water to form a firm dough. Turn onto a lightly floured surface; knead until smooth and elastic, 6-8 minutes. Cover and let rest for 1 hour.\n 2. Place potatoes in a large saucepan and cover with water. Bring to a boil. Reduce heat and cook until just tender, 8-10 minutes; drain. Set aside to cool slightly. In a large skillet, heat 3 tablespoons oil over medium heat. Add potatoes and cook until potatoes start to cling to the skillet, about 5 minutes. Stir in peas, ginger, garam masala, cumin seeds and salt; cook until heated through, about 2 minutes. Stir in optional ingredients as desired. Set aside.\n 3. Divide dough into 6 pieces. Roll 1 piece of dough into a 10x6-in. oval. Cut dough in half. Moisten straight edge with water. Bring 1 corner of half moon up to meet the other corner of half moon, forming a cone. Pinch seam to seal. Fill with 3-4 tablespoons potato mixture. Moisten curved edge of dough with water; fold over top of filling and press seam to seal. Gently press the bottom of each samosa to flatten slightly. Repeat with remaining dough and filling.\n 4. Preheat air fryer to 350°. Brush the samosas with the remaining 3 tablespoons oil. In batches, arrange in a single layer, without touching, on tray in air-fryer basket. Cook until golden brown, about 15 minutes.",
        category: "Main",
        datePublished: "28-Aug-2024",
        url: "https://www.tasteofhome.com/recipes/samosas/"
    ),
        Recipe(
            name: "Banana Fry",
            image: "BananaFry",
            description: "abcdefgh",
            ingredients: "2 cups all-purpose flour\n 3 tablespoons ghee or canola oil\n 1/2 teaspoon salt\n 1/2 teaspoon caraway seeds\n 3/4 cup cold water\n FILLING:\n 5 medium potatoes, peeled and chopped\n 6 tablespoons canola oil\n         1 cup fresh or frozen peas, thawed\n 1 teaspoon minced fresh gingerroot\n 1 teaspoon garam masala\n 1/2 teaspoon cumin seeds\n 1/2 teaspoon salt\n Optional: Fennel seeds, crushed coriander seeds, caraway seeds or amchur (dried mango powder) " ,
            instructions: "1. In a large bowl, combine flour, ghee, salt and caraway seeds until mixture resembles bread crumbs. Gradually stir in enough water to form a firm dough. Turn onto a lightly floured surface; knead until smooth and elastic, 6-8 minutes. Cover and let rest for 1 hour.\n 2. Place potatoes in a large saucepan and cover with water. Bring to a boil. Reduce heat and cook until just tender, 8-10 minutes; drain. Set aside to cool slightly. In a large skillet, heat 3 tablespoons oil over medium heat. Add potatoes and cook until potatoes start to cling to the skillet, about 5 minutes. Stir in peas, ginger, garam masala, cumin seeds and salt; cook until heated through, about 2 minutes. Stir in optional ingredients as desired. Set aside.\n 3. Divide dough into 6 pieces. Roll 1 piece of dough into a 10x6-in. oval. Cut dough in half. Moisten straight edge with water. Bring 1 corner of half moon up to meet the other corner of half moon, forming a cone. Pinch seam to seal. Fill with 3-4 tablespoons potato mixture. Moisten curved edge of dough with water; fold over top of filling and press seam to seal. Gently press the bottom of each samosa to flatten slightly. Repeat with remaining dough and filling.\n 4. Preheat air fryer to 350°. Brush the samosas with the remaining 3 tablespoons oil. In batches, arrange in a single layer, without touching, on tray in air-fryer basket. Cook until golden brown, about 15 minutes.",
            category: "Snack",
            datePublished: "28-Aug-2024",
            url: "https://www.tasteofhome.com/recipes/samosas/"
        ),
        Recipe(
            name: "Falooda",
            image: "Falooda",
            description: "abcdefgh",
            ingredients: "2 cups all-purpose flour\n 3 tablespoons ghee or canola oil\n 1/2 teaspoon salt\n 1/2 teaspoon caraway seeds\n 3/4 cup cold water\n FILLING:\n 5 medium potatoes, peeled and chopped\n 6 tablespoons canola oil\n         1 cup fresh or frozen peas, thawed\n 1 teaspoon minced fresh gingerroot\n 1 teaspoon garam masala\n 1/2 teaspoon cumin seeds\n 1/2 teaspoon salt\n Optional: Fennel seeds, crushed coriander seeds, caraway seeds or amchur (dried mango powder) " ,
            instructions: "1. In a large bowl, combine flour, ghee, salt and caraway seeds until mixture resembles bread crumbs. Gradually stir in enough water to form a firm dough. Turn onto a lightly floured surface; knead until smooth and elastic, 6-8 minutes. Cover and let rest for 1 hour.\n 2. Place potatoes in a large saucepan and cover with water. Bring to a boil. Reduce heat and cook until just tender, 8-10 minutes; drain. Set aside to cool slightly. In a large skillet, heat 3 tablespoons oil over medium heat. Add potatoes and cook until potatoes start to cling to the skillet, about 5 minutes. Stir in peas, ginger, garam masala, cumin seeds and salt; cook until heated through, about 2 minutes. Stir in optional ingredients as desired. Set aside.\n 3. Divide dough into 6 pieces. Roll 1 piece of dough into a 10x6-in. oval. Cut dough in half. Moisten straight edge with water. Bring 1 corner of half moon up to meet the other corner of half moon, forming a cone. Pinch seam to seal. Fill with 3-4 tablespoons potato mixture. Moisten curved edge of dough with water; fold over top of filling and press seam to seal. Gently press the bottom of each samosa to flatten slightly. Repeat with remaining dough and filling.\n 4. Preheat air fryer to 350°. Brush the samosas with the remaining 3 tablespoons oil. In batches, arrange in a single layer, without touching, on tray in air-fryer basket. Cook until golden brown, about 15 minutes.",
            category: "Dessert",
            datePublished: "28-Aug-2024",
            url: "https://www.tasteofhome.com/recipes/samosas/"
        ),
        Recipe(
            name: "Mango Lassi",
            image: "MangoLassi",
            description: "abcdefgh",
            ingredients: "2 cups all-purpose flour\n 3 tablespoons ghee or canola oil\n 1/2 teaspoon salt\n 1/2 teaspoon caraway seeds\n 3/4 cup cold water\n FILLING:\n 5 medium potatoes, peeled and chopped\n 6 tablespoons canola oil\n         1 cup fresh or frozen peas, thawed\n 1 teaspoon minced fresh gingerroot\n 1 teaspoon garam masala\n 1/2 teaspoon cumin seeds\n 1/2 teaspoon salt\n Optional: Fennel seeds, crushed coriander seeds, caraway seeds or amchur (dried mango powder) " ,
            instructions: "1. In a large bowl, combine flour, ghee, salt and caraway seeds until mixture resembles bread crumbs. Gradually stir in enough water to form a firm dough. Turn onto a lightly floured surface; knead until smooth and elastic, 6-8 minutes. Cover and let rest for 1 hour.\n 2. Place potatoes in a large saucepan and cover with water. Bring to a boil. Reduce heat and cook until just tender, 8-10 minutes; drain. Set aside to cool slightly. In a large skillet, heat 3 tablespoons oil over medium heat. Add potatoes and cook until potatoes start to cling to the skillet, about 5 minutes. Stir in peas, ginger, garam masala, cumin seeds and salt; cook until heated through, about 2 minutes. Stir in optional ingredients as desired. Set aside.\n 3. Divide dough into 6 pieces. Roll 1 piece of dough into a 10x6-in. oval. Cut dough in half. Moisten straight edge with water. Bring 1 corner of half moon up to meet the other corner of half moon, forming a cone. Pinch seam to seal. Fill with 3-4 tablespoons potato mixture. Moisten curved edge of dough with water; fold over top of filling and press seam to seal. Gently press the bottom of each samosa to flatten slightly. Repeat with remaining dough and filling.\n 4. Preheat air fryer to 350°. Brush the samosas with the remaining 3 tablespoons oil. In batches, arrange in a single layer, without touching, on tray in air-fryer basket. Cook until golden brown, about 15 minutes.",
            category: "Drink",
            datePublished: "28-Aug-2024",
            url: "https://www.tasteofhome.com/recipes/samosas/"
        ),    
        Recipe(
            name: "Chicken Puffs",
            image: "ChickenPuffs",
            description: "abcdefgh",
            ingredients: "2 cups all-purpose flour\n 3 tablespoons ghee or canola oil\n 1/2 teaspoon salt\n 1/2 teaspoon caraway seeds\n 3/4 cup cold water\n FILLING:\n 5 medium potatoes, peeled and chopped\n 6 tablespoons canola oil\n         1 cup fresh or frozen peas, thawed\n 1 teaspoon minced fresh gingerroot\n 1 teaspoon garam masala\n 1/2 teaspoon cumin seeds\n 1/2 teaspoon salt\n Optional: Fennel seeds, crushed coriander seeds, caraway seeds or amchur (dried mango powder) " ,
            instructions: "1. In a large bowl, combine flour, ghee, salt and caraway seeds until mixture resembles bread crumbs. Gradually stir in enough water to form a firm dough. Turn onto a lightly floured surface; knead until smooth and elastic, 6-8 minutes. Cover and let rest for 1 hour.\n 2. Place potatoes in a large saucepan and cover with water. Bring to a boil. Reduce heat and cook until just tender, 8-10 minutes; drain. Set aside to cool slightly. In a large skillet, heat 3 tablespoons oil over medium heat. Add potatoes and cook until potatoes start to cling to the skillet, about 5 minutes. Stir in peas, ginger, garam masala, cumin seeds and salt; cook until heated through, about 2 minutes. Stir in optional ingredients as desired. Set aside.\n 3. Divide dough into 6 pieces. Roll 1 piece of dough into a 10x6-in. oval. Cut dough in half. Moisten straight edge with water. Bring 1 corner of half moon up to meet the other corner of half moon, forming a cone. Pinch seam to seal. Fill with 3-4 tablespoons potato mixture. Moisten curved edge of dough with water; fold over top of filling and press seam to seal. Gently press the bottom of each samosa to flatten slightly. Repeat with remaining dough and filling.\n 4. Preheat air fryer to 350°. Brush the samosas with the remaining 3 tablespoons oil. In batches, arrange in a single layer, without touching, on tray in air-fryer basket. Cook until golden brown, about 15 minutes.",
            category: "Snack",
            datePublished: "28-Aug-2024",
            url: "https://www.tasteofhome.com/recipes/samosas/"
        ),
        Recipe(
            name: "Masala Tea",
            image: "MasalaTea",
            description: "abcdefgh",
            ingredients: "2 cups all-purpose flour\n 3 tablespoons ghee or canola oil\n 1/2 teaspoon salt\n 1/2 teaspoon caraway seeds\n 3/4 cup cold water\n FILLING:\n 5 medium potatoes, peeled and chopped\n 6 tablespoons canola oil\n         1 cup fresh or frozen peas, thawed\n 1 teaspoon minced fresh gingerroot\n 1 teaspoon garam masala\n 1/2 teaspoon cumin seeds\n 1/2 teaspoon salt\n Optional: Fennel seeds, crushed coriander seeds, caraway seeds or amchur (dried mango powder) " ,
            instructions: "1. In a large bowl, combine flour, ghee, salt and caraway seeds until mixture resembles bread crumbs. Gradually stir in enough water to form a firm dough. Turn onto a lightly floured surface; knead until smooth and elastic, 6-8 minutes. Cover and let rest for 1 hour.\n 2. Place potatoes in a large saucepan and cover with water. Bring to a boil. Reduce heat and cook until just tender, 8-10 minutes; drain. Set aside to cool slightly. In a large skillet, heat 3 tablespoons oil over medium heat. Add potatoes and cook until potatoes start to cling to the skillet, about 5 minutes. Stir in peas, ginger, garam masala, cumin seeds and salt; cook until heated through, about 2 minutes. Stir in optional ingredients as desired. Set aside.\n 3. Divide dough into 6 pieces. Roll 1 piece of dough into a 10x6-in. oval. Cut dough in half. Moisten straight edge with water. Bring 1 corner of half moon up to meet the other corner of half moon, forming a cone. Pinch seam to seal. Fill with 3-4 tablespoons potato mixture. Moisten curved edge of dough with water; fold over top of filling and press seam to seal. Gently press the bottom of each samosa to flatten slightly. Repeat with remaining dough and filling.\n 4. Preheat air fryer to 350°. Brush the samosas with the remaining 3 tablespoons oil. In batches, arrange in a single layer, without touching, on tray in air-fryer basket. Cook until golden brown, about 15 minutes.",
            category: "Drink",
            datePublished: "28-Aug-2024",
            url: "https://www.tasteofhome.com/recipes/samosas/"
        ),    
        Recipe(
            name: "Dhaal Rice",
            image: "DhaalRice",
            description: "abcdefgh",
            ingredients: "2 cups all-purpose flour\n 3 tablespoons ghee or canola oil\n 1/2 teaspoon salt\n 1/2 teaspoon caraway seeds\n 3/4 cup cold water\n FILLING:\n 5 medium potatoes, peeled and chopped\n 6 tablespoons canola oil\n         1 cup fresh or frozen peas, thawed\n 1 teaspoon minced fresh gingerroot\n 1 teaspoon garam masala\n 1/2 teaspoon cumin seeds\n 1/2 teaspoon salt\n Optional: Fennel seeds, crushed coriander seeds, caraway seeds or amchur (dried mango powder) " ,
            instructions: "1. In a large bowl, combine flour, ghee, salt and caraway seeds until mixture resembles bread crumbs. Gradually stir in enough water to form a firm dough. Turn onto a lightly floured surface; knead until smooth and elastic, 6-8 minutes. Cover and let rest for 1 hour.\n 2. Place potatoes in a large saucepan and cover with water. Bring to a boil. Reduce heat and cook until just tender, 8-10 minutes; drain. Set aside to cool slightly. In a large skillet, heat 3 tablespoons oil over medium heat. Add potatoes and cook until potatoes start to cling to the skillet, about 5 minutes. Stir in peas, ginger, garam masala, cumin seeds and salt; cook until heated through, about 2 minutes. Stir in optional ingredients as desired. Set aside.\n 3. Divide dough into 6 pieces. Roll 1 piece of dough into a 10x6-in. oval. Cut dough in half. Moisten straight edge with water. Bring 1 corner of half moon up to meet the other corner of half moon, forming a cone. Pinch seam to seal. Fill with 3-4 tablespoons potato mixture. Moisten curved edge of dough with water; fold over top of filling and press seam to seal. Gently press the bottom of each samosa to flatten slightly. Repeat with remaining dough and filling.\n 4. Preheat air fryer to 350°. Brush the samosas with the remaining 3 tablespoons oil. In batches, arrange in a single layer, without touching, on tray in air-fryer basket. Cook until golden brown, about 15 minutes.",
            category: "Main",
            datePublished: "28-Aug-2024",
            url: "https://www.tasteofhome.com/recipes/samosas/"
        )
    ]
}
