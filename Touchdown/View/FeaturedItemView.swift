//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by kenjimaeda on 17/12/22.
//

import SwiftUI

struct FeaturedItemView: View {
	//MARK: - Properties
	let player: PlayersModel
	
	var body: some View {
		ZStack {
			Image(player.image)
				.resizable()
				.scaledToFit()
				.cornerRadius(12)
		}
		.padding()
	}
	
}

struct FeaturedItemView_Previews: PreviewProvider {
	static var previews: some View {
		FeaturedItemView(player: players[0])
			.previewLayout(.sizeThatFits)
	}
}
