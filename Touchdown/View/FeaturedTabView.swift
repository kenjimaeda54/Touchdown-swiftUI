//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by kenjimaeda on 17/12/22.
//

import SwiftUI

struct FeaturedTabView: View {
	//mudar a cor dos dots apresentado no page style
	init() {
		UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 0.7)
		UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
	}
	
	var body: some View {
		TabView {
			
			ForEach(players) { player in
				FeaturedItemView(player: player)
			}
			.padding(.vertical,15)
			.padding(.horizontal,10)
			
		}//TabView
		.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))

	}
}

struct FeaturedTabView_Previews: PreviewProvider {
	static var previews: some View {
		FeaturedTabView()
			.previewLayout(.sizeThatFits)
			.background(Color.gray)
	}
}
