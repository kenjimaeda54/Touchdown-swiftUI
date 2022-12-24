//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by kenjimaeda on 21/12/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
	//MARK: - Properties
	@EnvironmentObject var shop: Shop;
	
	var body: some View {
		HStack {
			Image(systemName: "chevron.left")
				.foregroundColor(.white)
				.font(.title2)
				.onTapGesture {
					withAnimation(.easeInOut) {
						shop.showDetailView = false
						shop.product = nil
					}
				}
			Spacer()
			Image(systemName: "cart")
				.foregroundColor(.white)
				.font(.title2)
			
		}
	}
}

struct HeaderDetailView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationBarDetailView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.background(.gray)
	}
}
