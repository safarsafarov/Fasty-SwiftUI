//
//  ContentView.swift
//  Fasty-SwiftUI
//
//  Created by Safar Safarov on 30/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // MARK: Background
            Color(#colorLiteral(red: 0.07687245249, green: 0, blue: 0.140041076, alpha: 1))
                .ignoresSafeArea()
            
            content
        }
    }
    
    var content: some View {
        VStack {
            // MARK: Progress Ring
            ProgressRing()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
