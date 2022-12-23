//
//  AddToCarDetailView.swift
//  Touchdown
//
//  Created by kenjimaeda on 23/12/22.
//

import SwiftUI

struct QuantityFavoriteView: View {
	//MARK: - Properties
	@State private var count = 0
	
	//MARK: - Properties
	func handleSum() {
		if count == 100{
			return
		}
		count += 1
	}
	
	func handleSub() {
		if count  == 0 {
			return
		}
		count -= 1
	}
	
	var body: some View {
		HStack {
			HStack {
				Button(action:  handleSub) {
					Image(systemName: "minus.circle")
						.foregroundColor(.black)
					
				}
				
				Text("\(count)")
					.fontWeight(.semibold)
					.frame(minWidth: 36)
				
				Button(action:  handleSum) {
					Image(systemName: "plus.circle")
						.foregroundColor(.black)
					
				}
			} // Hstack
			Spacer()
			Image(systemName: "heart.circle")
				.foregroundColor(.pink)
			
		}// Hstack
		.font(.system(.title2,design: .rounded))
		
	}
}

struct AddToCarDetailView_Previews: PreviewProvider {
	static var previews: some View {
		QuantityFavoriteView()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
