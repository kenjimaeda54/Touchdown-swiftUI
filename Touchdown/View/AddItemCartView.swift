//
//  AddItemCartView.swift
//  Touchdown
//
//  Created by kenjimaeda on 23/12/22.
//

import SwiftUI

struct AddItemCartView: View {
	//MARK: - Properties
	
	//MARK: - Func
	func handleAddItemCart() {
		print("ola")
	}
	
	var body: some View {
		Button(action: handleAddItemCart) {
			Spacer()
			Text("Add to cart".uppercased())
				.foregroundColor(.white)
				.fontWeight(.bold)
				.font(.system(.largeTitle,design: .rounded))
			Spacer()
			
		}
		.padding(7)
		.background(
			Capsule()
				.foregroundColor(
					Color.blue.opacity(0.7)
				)
			
		)
	}
}

struct AddItemCartView_Previews: PreviewProvider {
	static var previews: some View {
		AddItemCartView()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
