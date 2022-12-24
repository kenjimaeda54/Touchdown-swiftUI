//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by kenjimaeda on 21/12/22.
//

import SwiftUI

struct HeaderDetailView: View {
	//MARK: - Properties
	@EnvironmentObject var shop: Shop;
	
	var body: some View {
		VStack(alignment: .leading) {
			Text("Protective Gear")
				.foregroundColor(.white)
				.font(.title2)
			
			
			Text(shop.product?.name ??  sampleProduct.name)
				.font(.largeTitle)
				.fontWeight(.black)
				.foregroundColor(.white)
			
			
		}// VStack
	}
}

struct TopPartDetailView_Previews: PreviewProvider {
	static var previews: some View {
		HeaderDetailView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.background(.gray)
	}
}
