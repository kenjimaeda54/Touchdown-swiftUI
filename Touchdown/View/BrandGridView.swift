//
//  BrandGridView.swift
//  Touchdown
//
//  Created by kenjimaeda on 21/12/22.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
			ScrollView(.horizontal,showsIndicators: false) {
				LazyHGrid(rows: gridItem, spacing: columnSpacing) {
					ForEach(brands) { brand in
						BrandItemView(brand: brand)
					}
				}
				.frame(height: 200)
			}
			
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
				.previewLayout(.sizeThatFits)
    }
}
