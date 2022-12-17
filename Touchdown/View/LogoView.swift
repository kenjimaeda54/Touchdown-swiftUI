//
//  LogoView.swift
//  Touchdown
//
//  Created by kenjimaeda on 17/12/22.
//

import SwiftUI

struct LogoView: View {
	var body: some View {
		HStack(spacing:4) {
			Text("Touch".uppercased())
				.font(.title3)
				.fontWeight(.bold)
			
			Image("logo-dark")
			
			Text("Down".uppercased())
				.font(.title3)
				.fontWeight(.bold)
			
		}
	}
}

struct LogoView_Previews: PreviewProvider {
	static var previews: some View {
		LogoView()
			.previewLayout(.sizeThatFits)
	}
}
