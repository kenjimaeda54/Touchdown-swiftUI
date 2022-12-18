//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by kenjimaeda on 18/12/22.
//

import SwiftUI

struct CategoryGridView: View {
	var body: some View {
		ScrollView(.horizontal,showsIndicators: false) {
			
			LazyHGrid(rows: gridItem, alignment: .center, spacing: columnSpacing,pinnedViews: []) {
				
				Section(header: SectionView(rotateisDegress: false),footer: SectionView(rotateisDegress: true)) {
					ForEach(categories) { category in
						CategoryItemView(category: category)
					}//Loop
				}//Section
			}//grid
			.frame(height: 140)
		}//ScrollView
	}
}

struct CategoryGridView_Previews: PreviewProvider {
	static var previews: some View {
		CategoryGridView()
			.padding()
			.previewLayout(.sizeThatFits)
			.background(colorBackground)
	}
}
