//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by kenjimaeda on 21/12/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
	var body: some View {
		HStack {
			Image(systemName: "chevron.left")
				.foregroundColor(.white)
				.font(.title2)
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
			.previewLayout(.sizeThatFits)
			.background(.gray)
	}
}
