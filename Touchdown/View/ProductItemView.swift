//
//  ProductItemView.swift
//  Touchdown
//
//  Created by kenjimaeda on 21/12/22.
//

import SwiftUI

struct ProductItemView: View {
	//MARK: - Properties
	let product: ProductModel
	
	var body: some View {
		VStack(alignment: .leading, spacing: 4) {
			Image(product.image)
				.resizable()
				.scaledToFit()
				.frame(width:165,height: 300)
				.background(
					Color(red: product.red, green: product.green, blue: product.blue)
						.cornerRadius(7)
				)
			
			Text(product.name)
				.font(.title3)
				.fontWeight(.bold)
				.foregroundColor(.black)
			
			Text(product.formatPrice)
				.font(.footnote)
				.fontWeight(.light)
			
		}// Vstack
		.padding()
	}
}

struct ProductItemView_Previews: PreviewProvider {
	static var previews: some View {
		ProductItemView(product: products[0])
			.previewLayout(.sizeThatFits)
	}
}
