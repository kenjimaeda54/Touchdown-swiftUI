//
//  ProductModel.swift
//  Touchdown
//
//  Created by kenjimaeda on 21/12/22.
//

import Foundation

struct ProductModel: Identifiable,Codable {
	let id: Int
	let name: String
	let image: String
	let price: Double
	let description: String
	let color: [Double]
	
	var red: Double {return color[0]}
	var green: Double {return color[1]}
	var blue: Double {return color[2]}
	
	var formatPrice: String {return String(format: "$%.02f", price)}
	
	
}
