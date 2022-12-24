//
//  ContentView.swift
//  Touchdown
//
//  Created by kenjimaeda on 16/12/22.
//

import SwiftUI

struct ContentView: View {
	//todas telas anteriores tem que ter acesso ao EnvironmentObject
	//ou seja quem chama essa view precisa desse propriedade nesse caso
	//e proprio arquivo principal da raiz
	@EnvironmentObject var shop: Shop;
	
	var body: some View {
		VStack {
			if !shop.showDetailView {
				GeometryReader{ geometry in
					VStack(spacing:0) {
						NavigationBarView()
							.background(.white)
							.shadow(color: Color.black.opacity(0.05),radius: 5,x:0,y:5)
						//pegar altura da safe area
							.padding(.top,  geometry.safeAreaInsets.top)
						
						ScrollView(.vertical,showsIndicators: false) {
							
							VStack(spacing: 0) {
								
								FeaturedTabView()
									.frame(minHeight: geometry.size.width / 1.3)
									.padding(.vertical,10)
								
								CategoryGridView()
									.padding(.horizontal,11)
								
								//adicionar fora do lazy se não ira bagançar ele
								TitleView(title: "Helmets")
								LazyVGrid(columns: gridItem,alignment: .leading) {
									ForEach(products) { product in
										ProductItemView(product: product)
											.onTapGesture {
												withAnimation(.easeOut) {
													shop.product = product
													shop.showDetailView = true
												}
											}
									}
									
								}
								
								TitleView(title: "Brand")
								BrandGridView()
									.padding()
								
								FooterView()
									.padding(.horizontal)
								
							}// Vstack
							
						}// ScrollView
						
					}//Vstack
					.background(colorBackground.ignoresSafeArea(.all,edges: .all))
					.ignoresSafeArea(.all,edges: .top)
				}
			} else {
				ProductDetailView()
			}
		}// Zstack
	}
	
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.environmentObject(Shop())
	}
}
