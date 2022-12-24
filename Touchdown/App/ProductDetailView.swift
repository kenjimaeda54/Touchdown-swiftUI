//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by kenjimaeda on 21/12/22.
//

import SwiftUI

struct ProductDetailView: View {
 //MARK: - Properties
	//environmentObject instancio apenas um objeto a partir do obsever
	//assim consigo manipular esse objeto em qualquer lugar com mantendo valor anterior
	//https://stackoverflow.com/questions/63343819/what-is-the-difference-between-environmentobject-and-observedobject
	//diferença entre o EnvironmentObject  e ObservedObject
	
	//github usando ObservedObject
  //ObservedObjec
	@EnvironmentObject var shop: Shop;
	
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
						.padding(.bottom,7)
					
					Text(shop.product?.description ?? sampleProduct.description)
						.font(.system(.body,design: .rounded))
						.foregroundColor(.gray)
						.padding(.horizontal)
						.padding(.bottom, 5)
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
				Color(red: shop.product?.red ?? sampleProduct.red,
							green: shop.product?.green ?? sampleProduct.green,
							blue: shop.product?.blue ?? sampleProduct.blue)
				.ignoresSafeArea(.all)
			)
			
		}//Geometry
		
	}
}

struct ProductDetailView_Previews: PreviewProvider {
	static var previews: some View {
		ProductDetailView()
			.environmentObject(Shop())
		
	}
}
