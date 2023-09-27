//
//  ContentView.swift
//  Cards
//
//  Created by Lopen on 9/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(card: Card(front: "What is 7+7?", back: "14"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
