//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by kenjimaeda on 17/12/22.
//

import SwiftUI

struct NavigationBarView: View {
	var body: some View {
		HStack {
			Image(systemName: "magnifyingglass")
				.font(.title2)
				.foregroundColor(.black)
			Spacer()
			LogoView()
			Spacer()
			Image(systemName: "cart")
				.font(.title2)
				.foregroundColor(.black)
				.overlay(alignment: .topTrailing, content: {
					Circle()
						.frame(width: 12,height: 12)
						.foregroundColor(Color.red)
				})
		}// Hstack
		.padding(.horizontal,15)
		.padding(.vertical,10)
	}
}

struct NavigationBarView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationBarView()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
