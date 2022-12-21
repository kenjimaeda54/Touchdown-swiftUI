//
//  BrandItemView.swift
//  Touchdown
//
//  Created by kenjimaeda on 21/12/22.
//

import SwiftUI

struct BrandItemView: View {
	//MARK: - Properties
	let brand: BrandModel
	
	var body: some View {
		Image(brand.image)
			.resizable()
			.scaledToFit()
			.padding(3)
			.cornerRadius(7)
			.background(
				RoundedRectangle(cornerRadius: 7).stroke(Color.red,lineWidth: 1)
			)
	}
	
}

struct BrandItemView_Previews: PreviewProvider {
	static var previews: some View {
		BrandItemView(brand: brands[0])
			.previewLayout(.sizeThatFits)
	}
}
