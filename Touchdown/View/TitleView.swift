//
//  TitleView.swift
//  Touchdown
//
//  Created by kenjimaeda on 21/12/22.
//

import SwiftUI

struct TitleView: View {
	//MARK: - Properties
	let title: String
	
	var body: some View {
		HStack {
			Text(title)
				.font(.largeTitle)
				.foregroundColor(.black)
				.fontWeight(.bold)
			
			Spacer()
		}
		.padding()
	} // Hstack
}

struct TitleView_Previews: PreviewProvider {
	static var previews: some View {
		TitleView(title: "Helmets")
			.previewLayout(.sizeThatFits)
	}
}
