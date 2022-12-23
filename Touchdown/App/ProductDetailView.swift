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
					.zIndex(1)
				
				ScrollView(.vertical,showsIndicators: false) {
					
					RatingsSizeDetailView()
						.padding(.horizontal)
					
					Text(sampleProduct.description)
						.font(.system(.body,design: .rounded))
						.foregroundColor(.gray)
						.padding()
						.multilineTextAlignment(.leading)
					
					QuantityFavoriteView()
						.padding(.horizontal)
					
					
					AddItemCartView()
						.padding(.bottom,10)
						.padding(.horizontal)
					
					Spacer()
				}// ScroolView
				.background(
					Color.white
						.clipShape(CustomShape())
					//precisa ser top se colocar vertical perde o shape
						.padding(.top,-105)
				)
				.zIndex(0)
				
				
				
				
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
