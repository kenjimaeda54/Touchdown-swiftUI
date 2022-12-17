//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by kenjimaeda on 17/12/22.
//

import SwiftUI

struct FeaturedTabView: View {
	//MARK: - Properties
	
	var body: some View {
		TabView {
			
			ForEach(players) { player in
				FeaturedItemView(player: player)
			}
			.padding(.vertical,15)
			.padding(.horizontal,10)
			
		}//TabView
		.tabViewStyle(.page(indexDisplayMode: .always))
		
	}
}

struct FeaturedTabView_Previews: PreviewProvider {
	static var previews: some View {
		FeaturedTabView()
			.previewLayout(.sizeThatFits)
			.background(Color.gray)
	}
}
