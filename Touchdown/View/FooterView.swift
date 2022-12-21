//
//  FooterView.swift
//  Touchdown
//
//  Created by kenjimaeda on 16/12/22.
//

import SwiftUI

struct FooterView: View {
	var body: some View {
		VStack(alignment: .center, spacing: 15) {
			Text("We offer the most cutting edge,comfortable,lightweight and durable footbal helmets in the market at affordable prices")
				.foregroundColor(.gray)
				.multilineTextAlignment(.center)
				.font(.footnote)
			
			Image("logo-lineal")
				.renderingMode(.template)
				.foregroundColor(.gray)
			
			Text("Copyright @ Ricardo Maeda\nAll right reserved")
				.multilineTextAlignment(.center)
				.foregroundColor(.gray)
			
		} // VStack
		.padding()
	}
}

struct FooterView_Previews: PreviewProvider {
	static var previews: some View {
		FooterView()
			.padding()
			.previewLayout(.sizeThatFits)
	}
}
