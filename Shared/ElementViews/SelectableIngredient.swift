//
//  SelectableIngredient.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 14..
//

import SwiftUI

struct SelectableIngredient: View {
	var ingredient: Ingredient
	
	@State var isSelected: Bool = false
	
    var body: some View {
		Button {
			isSelected = !isSelected
		} label: {
			ZStack(alignment: .topLeading) {
				LinearGradient( colors: [ingredient.color, ingredient.color.opacity(0.6)], startPoint: .topLeading, endPoint: .bottomTrailing
				).grayscale(isSelected ? 0 : 1)
				VStack(alignment: .leading) {
					Text(ingredient.name).foregroundStyle(.white).font(.title)
					Text("5 nutrients").foregroundStyle(.white.opacity(0.5)).font(.headline).font(.system(size: 22, weight: .bold))
					Spacer()
						.frame(minWidth: 10, idealWidth: .infinity, maxWidth: .infinity,	maxHeight: 70)
				}.padding(26)
				VStack {
					Spacer()
					HStack {
						Spacer()
						Text(ingredient.icon).font(.system(size: 30))
							.padding()
							.background(.white)
							.cornerRadius(100)
							.padding(5)
							.background(.gray.opacity(0.3))
							.cornerRadius(100)
							.grayscale(isSelected ? 0 : 0.5)
					}
				}.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 15))
			}
			.aspectRatio(1, contentMode: .fit)
			.frame(minWidth: 10, idealWidth: .infinity, maxWidth: .infinity)
			.cornerRadius(26)
		}
    }
}

struct SelectableIngredient_Previews: PreviewProvider {
    static var previews: some View {
		SelectableIngredient(ingredient: Ingredient(name: "Apple", icon: "🍎", color: .red, unit: "kg", amount: 0)).previewDisplayName("SelectableIngredientView")
    }
}