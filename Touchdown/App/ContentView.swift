//
//  ContentView.swift
//  Touchdown
//
//  Created by kenjimaeda on 16/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           FooterView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
