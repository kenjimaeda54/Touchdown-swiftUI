//
//  Constants.swift
//  Touchdown
//
//  Created by kenjimaeda on 16/12/22.
//


import SwiftUI

//data
var players: [PlayersModel] = Bundle.main.decodeJsonFromBundle("player.json") ?? []


//colors
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)
