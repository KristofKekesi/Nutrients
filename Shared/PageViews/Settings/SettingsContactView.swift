//
//  SettingsContactView.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 25..
//

import UIKit
import SwiftUI

struct SettingsContactView: View {
    var body: some View {
		Form{
			Section(content: {
				Label("Email", systemImage: "at")
			}, footer: {
				VStack(alignment: .leading) {
					Text("Suggest ingredients.")
					Text("Send feedback.")
				}
			})
			Section("Social media") {
				HStack{
					Text("Twitter")
					Spacer()
					Text("@KristofKekesi").foregroundColor(.secondary)
				}
				HStack{
					Text("Instagram")
					Spacer()
					Text("@kristofkekesiofficial").foregroundColor(.secondary)
				}
			}
			.navigationTitle("Contacts")
		}
    }
}

struct SettingsContactView_Previews: PreviewProvider {
    static var previews: some View {
		SettingsContactView().previewDisplayName("SettingsContactView")
    }
}
