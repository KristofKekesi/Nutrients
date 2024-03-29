//
//  MealView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 18..
//

import HealthKit
import SwiftUI
import Drops

struct MealView: View {
	var meal: Meal
	
	let drop: Drop = "Nutrients added"
	
	var body: some View {
		Button {
			HealthKitData().addHKData([
				Nutrient(name: "Energy", nutrient: .dietaryEnergyConsumed, quantity: HKQuantity(
					unit: HKUnit.kilocalorie(), doubleValue: 488)),
				Nutrient(name: "Fat", nutrient: .dietaryFatTotal, quantity: HKQuantity(
					unit: HKUnit.gram(), doubleValue: 21.1)),
				Nutrient(name: "Carbohydrates", nutrient: .dietaryCarbohydrates, quantity: HKQuantity(
					unit: HKUnit.gram(), doubleValue: 61.6)),
				Nutrient(name: "Protein", nutrient: .dietaryProtein, quantity: HKQuantity(
					unit: HKUnit.gram(), doubleValue: 9.8))
			])
			
			Drops.show(drop)
		} label: {
			ZStack(alignment: .topLeading) {
				VStack(alignment: .leading) {
					Text(meal.name).foregroundStyle(.white).font(.title)
					Text(meal.subtitle).foregroundStyle(.white.opacity(0.5)).font(.headline)
					Spacer()
						.frame(minWidth: 10, idealWidth: .infinity, maxWidth: .infinity,	maxHeight: 70)
				}.padding(16)
				VStack {
					Spacer()
					if (meal.icon != "") {
						HStack {
							Spacer()
							Text(meal.icon).font(.system(size: 30))
								.padding()
								.background(.white)
								.cornerRadius(100)
								.padding(5)
								.background(.gray.opacity(0.3))
								.cornerRadius(100)
						}
					}
				}.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 15))
			}.background(meal.color.opacity(0.65).background(.white.opacity(0.6)))
			.aspectRatio(1, contentMode: .fit)
			.frame(minWidth: 10, idealWidth: .infinity, maxWidth: .infinity)
			.cornerRadius(16)
		}
	}
}

struct MealView_Previews: PreviewProvider {
	static var previews: some View {
		MealView(meal: Meal(name: "Omlette", subtitle: "3x🥚", icon: "🍳", color: .orange, ingredients: []) ).previewDisplayName("MealView")
	}
}
