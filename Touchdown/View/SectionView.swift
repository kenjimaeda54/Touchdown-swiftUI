//
//  SectionView.swift
//  Touchdown
//
//  Created by kenjimaeda on 18/12/22.
//

import SwiftUI

struct SectionView: View {
	//MARK: - Properties
	@State var rotateisDegress = false
	
	var body: some View {
		VStack(spacing: 0) {
			Spacer()
			Text("CATEGORIES")
				.fontWeight(.light)
				.font(.footnote)
				.foregroundColor(Color.white)
				.rotationEffect(Angle(degrees: rotateisDegress ? 90 : -90))
			Spacer()
			
		}
		.background(colorGray.cornerRadius(12))
		.frame(width: 85)
		.frame(height: 140)
	}// Vstack
	
}

struct SectionView_Previews: PreviewProvider {
	static var previews: some View {
		SectionView(rotateisDegress: false)
			.padding()
			.previewLayout(.sizeThatFits)
			.background(colorBackground)
	}
}
