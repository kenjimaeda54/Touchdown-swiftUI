//
//  TopDetailView.swift
//  Touchdown
//
//  Created by kenjimaeda on 21/12/22.
//

import SwiftUI

struct TopDetailView: View {
	//MARK: - Properties
	@State private var isAnimation = false
	@EnvironmentObject var shop: Shop;
	
	var body: some View {
		HStack {
			VStack(alignment: .leading,spacing: 6) {
				Text("Price")
					.fontWeight(.semibold)
				
				Text(shop.product?.formatPrice ?? sampleProduct.formatPrice)
					.font(.largeTitle)
					.fontWeight(.bold)
					.scaleEffect(1.1,anchor: .leading)
				
			}//VStack
			.offset(y: isAnimation ? -60 : -70)
			Spacer()
			Image(shop.product?.image ?? sampleProduct.image)
				.resizable()
				.scaledToFit()
				.offset(y: isAnimation ? 0 : -20)
			
			
		}// Vstack
		.onAppear {
			withAnimation(.easeInOut(duration: 1.0)) {
				isAnimation = true
			}
		}
	}
}

struct TopDetailView_Previews: PreviewProvider {
	static var previews: some View {
		TopDetailView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.background(.gray)
	}
}
