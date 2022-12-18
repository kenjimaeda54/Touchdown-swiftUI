//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by kenjimaeda on 18/12/22.
//

import SwiftUI

struct CategoryItemView: View {
	//MARK: - Properties
	let category: CategoriesModel
	var body: some View {
		HStack {
			Image(category.image)
			//para a cor pegar precisa do modo template
				.renderingMode(.template)
				.resizable()
				.scaledToFit()
				.frame(width: 30,height: 30)
				.foregroundColor(
					Color.gray
				)
			
			Text(category.name.uppercased())
				.fontWeight(.light)
				.foregroundColor(Color.gray)
			Spacer()
		}
		.padding()
		.background(Color.white)
		.cornerRadius(12)
		.background(
			RoundedRectangle(cornerRadius: 12)
				.stroke(Color.gray,lineWidth: 1)
		)
	}// HStack
	
}

struct CategoryItemView_Previews: PreviewProvider {
	static var previews: some View {
		CategoryItemView(category: categories[0])
			.previewLayout(.sizeThatFits)
			.padding()
			.background(colorBackground)
	}
}
