//
//  Shop.swift
//  Touchdown
//
//  Created by kenjimaeda on 24/12/22.
//

import Foundation

class Shop: ObservableObject  {
	
	@Published var product: ProductModel? = nil
	@Published var showDetailView: Bool = false
	
}
