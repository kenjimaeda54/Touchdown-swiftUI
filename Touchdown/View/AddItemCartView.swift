//
//  AddItemCartView.swift
//  Touchdown
//
//  Created by kenjimaeda on 23/12/22.
//

import SwiftUI

struct AddItemCartView: View {
	//MARK: - Properties
	@EnvironmentObject var shop: Shop;
	
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
					Color(red: shop.product?.red ?? sampleProduct.red, green: shop.product?.green ?? sampleProduct.green, blue: shop.product?.blue ?? sampleProduct.blue)
				)
			
		)
	}
}

struct AddItemCartView_Previews: PreviewProvider {
	static var previews: some View {
		AddItemCartView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
