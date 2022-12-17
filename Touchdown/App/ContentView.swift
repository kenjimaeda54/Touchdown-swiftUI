//
//  ContentView.swift
//  Touchdown
//
//  Created by kenjimaeda on 16/12/22.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		GeometryReader{ geometry in
			VStack {
				NavigationBarView()
					.background(.white)
					.shadow(color: Color.black.opacity(0.05),radius: 5,x:0,y:5)
				//pegar altura da safe area
					.padding(.top,  geometry.safeAreaInsets.top)
				
				ScrollView(.vertical,showsIndicators: false) {
					
					VStack(spacing: 10) {
						
						FeaturedTabView()
							.frame(height: 300)
						
						FooterView()
							.padding(.horizontal)
						 
					}// Vstack
					
				}// ScrollView
				
				
			}//Vstack
			.background(colorBackground.ignoresSafeArea(.all,edges: .all))
			.ignoresSafeArea(.all,edges: .top)
		}// Zstack
	}
	
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
