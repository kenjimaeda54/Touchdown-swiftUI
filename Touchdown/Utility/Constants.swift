//
//  Constants.swift
//  Touchdown
//
//  Created by kenjimaeda on 16/12/22.
//


import SwiftUI

//MARK: - data
let players: [PlayersModel] = Bundle.main.decodeJsonFromBundle("player.json") ?? []
let categories: [CategoriesModel] = Bundle.main.decodeJsonFromBundle("category.json") ?? []
let products: [ProductModel] = Bundle.main.decodeJsonFromBundle("product.json") ??  []
let brands: [BrandModel] = Bundle.main.decodeJsonFromBundle("brand.json") ??  []


//MARK: - colors
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//MARK: - layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridItem: [GridItem]  {
	return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}


