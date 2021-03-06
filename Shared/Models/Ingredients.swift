//
//  Ingredients.swift
//  FoodLog
//
//  Created by KristΓ³f KΓ©kesi on 2022. 02. 12..
//

import Foundation
import Accessibility
import SwiftUI


class Ingredients: ObservableObject {
	@Published var neededIngredients = [Ingredient]()
	@Published var allIngredients = [
		// A
		Ingredient(name: "Apple", icon: "π", color: .red, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Aubergine", icon: "π", color: .purple, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Avocado", icon: "π₯", color: .green, unit: UnitMass.decigrams, amount: 0),
		// B
		Ingredient(name: "Bacon", icon: "π₯", color: .pink, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Banana", icon: "π", color: .yellow, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Blueberry", icon: "π«", color: .blue, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Bread", icon: "π", color: .brown, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Broccoli", icon: "π₯¦", color: .green, unit: UnitMass.decigrams, amount: 0),
		// C
		Ingredient(name: "Carrot", icon: "π₯", color: .orange, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Cheese", icon: "π§", color: .yellow, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Cherry", icon: "π", color: .red, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Chestnut", icon: "π°", color: .brown, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Chilli pepper", icon: "πΆ", color: .red, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Coconut", icon: "π₯₯", color: .white, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Corn", icon: "π½", color: .yellow, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Cucumber", icon: "π₯", color: .green, unit: UnitMass.decigrams, amount: 0),
		// D
		// E
		Ingredient(name: "Egg", icon: "π₯", color: .white, unit: UnitMass.decigrams, amount: 0),
		// F
		// G
		Ingredient(name: "Garlic", icon: "π§", color: .brown, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Grape", icon: "π", color: .pink, unit: UnitMass.decigrams, amount: 0),
		// H
		// I
		// J
		// K
		Ingredient(name: "Kiwi", icon: "π₯", color: .green, unit: UnitMass.decigrams, amount: 0),
		// L
		Ingredient(name: "Lemon", icon: "π", color: .yellow, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Lemon Juice", icon: "", color: .yellow, unit: UnitVolume.deciliters, amount: 0),
		// M
		Ingredient(name: "Mango", icon: "π₯­", color: .orange, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Melon", icon: "π", color: .yellow, unit: UnitMass.decigrams, amount: 0),
		// N
		// O
		Ingredient(name: "Olive", icon: "π«", color: .green, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Onion", icon: "π§", color: .brown, unit: UnitMass.decigrams, amount: 0),
		// P
		Ingredient(name: "Peach", icon: "π", color: .orange, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Peanut", icon: "π₯", color: .brown, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Pear", icon: "π", color: .green, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Pepper", icon: "π«", color: .green, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Pineaple", icon: "π", color: .orange, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Potato", icon: "π₯", color: .brown, unit: UnitMass.decigrams, amount: 0),
		// Q
		// R
		Ingredient(name: "Rice", icon: "π", color: .white, unit: UnitMass.decigrams, amount: 0),
		// S
		Ingredient(name: "Strawberry", icon: "π", color: .red, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Sweet potato", icon: "π ", color: .purple, unit: UnitMass.decigrams, amount: 0),
		// T
		Ingredient(name: "Tangerine", icon: "π", color: .orange, unit: UnitMass.decigrams, amount: 0),
		Ingredient(name: "Tomato", icon: "π", color: .red, unit: UnitMass.decigrams, amount: 0),
		// U
		// V
		// W
		Ingredient(name: "Water", icon: "π§", color: .blue, unit: UnitVolume.deciliters, amount: 0),
		Ingredient(name: "Watermelon", icon: "π", color: .red, unit: UnitMass.decigrams, amount: 0),
		// X
		// Y
		// Z
	]
}
