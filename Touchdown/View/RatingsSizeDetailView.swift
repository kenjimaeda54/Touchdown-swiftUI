//
//  QuantityFavoriteDetail.swift
//  Touchdown
//
//  Created by kenjimaeda on 23/12/22.
//

import SwiftUI

struct RatingsSizeDetailView: View {
	//MARK: - Properties
	let size = ["XS","S","M","L", "XL"]
	
	//MARK: - Func
	func handleRatings(){
		print("ola")
	}
	
	var body: some View {
		HStack {
			VStack(alignment: .leading){
				
				Text("Ratings")
					.foregroundColor(colorGray)
					.font(.title2)
				
				HStack {
					ForEach(0..<size.count,id: \.self) { _ in
						Button(action: handleRatings) {
							Image(systemName: "star.fill")
								.frame(width: 28,height: 28,alignment: .center)
								.foregroundColor(.white)
								.background(
									colorGray
										.cornerRadius(3)
									
								)
						}
					}
				} //Hstack
				
			}//Vstack
			Spacer()
			VStack(alignment: .trailing){
				
				Text("Sizes")
					.foregroundColor(colorGray)
					.font(.title2)
				
				HStack {
					ForEach(size,id: \.self) { size in
						Button(action: handleRatings) {
							Text(size)
								.foregroundColor(colorGray)
							//alterina e colocar um frame caso desejar um espacoa igual dentro do componente
								.frame(width: 28,height: 28,alignment: .center)
								.background(
									RoundedRectangle(cornerRadius: 5)
										.stroke(colorGray,lineWidth: 2)
								)
						}
					}
				} //Hstack
				
			}//Vstack
			
			
		}// Hstack
	}
}

struct QuantityFavoriteDetail_Previews: PreviewProvider {
	static var previews: some View {
		RatingsSizeDetailView()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
