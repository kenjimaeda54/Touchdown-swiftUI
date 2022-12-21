//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by kenjimaeda on 21/12/22.
//

import SwiftUI

struct ProductDetailView: View {
	var body: some View {
		GeometryReader { geometry in
			VStack(alignment: .leading,spacing: 16) {
				NavigationBarDetailView()
					.padding(.top,geometry.safeAreaInsets.self.top)
					.padding(.horizontal)
				
				HeaderDetailView()
					.padding(.horizontal)
				
				TopDetailView()
					.padding(.horizontal)
				
				Spacer()
			}// Vstack
			//repara qeu o ignore safe area fica dentro não fora do geometry
			.edgesIgnoringSafeArea(.all)
			.background(
				Color(red: sampleProduct.red,
							green: sampleProduct.green,
							blue: sampleProduct.blue)
				.ignoresSafeArea(.all)
			)
			
		}//Geometry
		
	}
}

struct ProductDetailView_Previews: PreviewProvider {
	static var previews: some View {
		ProductDetailView()
	}
}
