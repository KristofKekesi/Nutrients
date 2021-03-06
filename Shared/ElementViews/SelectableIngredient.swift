//
//  SelectableIngredient.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 14..
//

import SwiftUI

struct SelectableIngredient: View {
	var ingredient: Ingredient
	@Binding var selectedIngredients: [Ingredient]
	
    var body: some View {
		Button {
			let index: Int? = selectedIngredients.firstIndex(where: {$0 == ingredient}) ?? nil
			if (index != nil) {
				selectedIngredients.remove(at: index!)
			} else {
				selectedIngredients.append(ingredient)
			}
		} label: {
			ZStack(alignment: .topLeading) {
				if (ingredient.color == .white) { Color.black }
				LinearGradient( colors: selectedIngredients.contains(ingredient) ? [ingredient.color == .white ? .black.opacity(0.2) : ingredient.color, ingredient.color.opacity(0.3)] : [ingredient.color == .white ? .white.opacity(0.4) : ingredient.color, ingredient.color.opacity(0.7)], startPoint: .topLeading, endPoint: .bottomTrailing
				).grayscale(selectedIngredients.contains(ingredient) ? 0 : 1)
				VStack(alignment: .leading) {
					Text(ingredient.name).foregroundStyle(.white).font(.title)
					Text("5 nutrients").foregroundStyle(.white.opacity(0.5)).font(.subheadline.weight(.bold))
					Spacer()
						.frame(minWidth: 10, idealWidth: .infinity, maxWidth: .infinity,	maxHeight: 70)
				}.padding(16)
				VStack {
					Spacer()
					if (ingredient.icon != "") {
						HStack {
							Spacer()
							Text(ingredient.icon).font(.system(size: 30))
								.padding()
								.background(.white)
								.cornerRadius(100)
								.padding(5)
								.background(.gray.opacity(0.3))
								.cornerRadius(100)
								.grayscale(selectedIngredients.contains(ingredient) ? 0 : 0.5)
						}
					}
				}.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 15))
			}
			.aspectRatio(1, contentMode: .fit)
			.frame(minWidth: 10, idealWidth: .infinity, maxWidth: .infinity)
			.cornerRadius(16)
		}
	}
}

struct SelectableIngredient_Previews: PreviewProvider {
	static var previews: some View {
		SelectableIngredient(ingredient: Ingredient(name: "Apple", icon: "🍎", color: .red, unit: UnitMass.decigrams, amount: 0), selectedIngredients: .constant([])).previewDisplayName("SelectableIngredientView")
    }
}
