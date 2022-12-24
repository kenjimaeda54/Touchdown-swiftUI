//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by kenjimaeda on 16/12/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
	var body: some Scene {
		WindowGroup {
			ContentView()
				.environmentObject(Shop())
		}
	}
}
