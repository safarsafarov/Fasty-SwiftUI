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
        VStack(spacing: 40) {
            // MARK: Progress Ring
            Text("Let's get started!")
                .font(.headline)
                .foregroundColor(Color(#colorLiteral(red: 0.3663273156, green: 0.5047162175, blue: 0.9721121192, alpha: 1)))
            
            
            // MARK: Fasting Plan
                .fontWeight(.bold)
                .padding(.horizontal, 24)
                .padding()
            
            // MARK: Progress Ring
            
            ProgressRing()
            
            HStack(spacing: 60) {
                // MARK: Start Time
                
                VStack(spacing: 6) {
                    Text("Start")
                        .opacity(0.7)
                    
                    Text(Date(), format: .dateTime.weekday().hour().minute().second())
                        .fontWeight(.bold)
                }
                
                // MARK: End Time
                
                VStack(spacing: 5) {
                    Text("End")
                        .opacity(0.7)
                    
                    Text(Date().addingTimeInterval(16), format: .dateTime.weekday().hour().minute().second())
                        .fontWeight(.bold)
                }
            }
            
            Button {
                
            } label: {
                Text("Start fasting")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 8)
                    .background(.thinMaterial)
                    .cornerRadius(20)
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
