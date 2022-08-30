//
//  ProgressRing.swift
//  Fasty-SwiftUI
//
//  Created by Safar Safarov on 30/08/22.
//

import SwiftUI

struct ProgressRing: View {
    @State var progress = 0.5
    var body: some View {
        ZStack {
            // MARK: Placeholder Ring
            
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(.gray)
                .opacity(0.1)
            
            // MARK: Colored Ring
            
            Circle()
                .trim(from:0.0, to: min(progress, 1.0))
                .stroke(AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3663273156, green: 0.5047162175, blue: 0.9721121192, alpha: 1)), Color(#colorLiteral(red: 0.942648828, green: 0.4157198966, blue: 0.6704799533, alpha: 1)), Color(#colorLiteral(red: 0.8164353967, green: 0.6586706042, blue: 0.8116279244, alpha: 1)), Color(#colorLiteral(red: 0.5596573353, green: 0.8194586635, blue: 0.843054235, alpha: 1)), Color(#colorLiteral(red: 0.3701431751, green: 0.5008467436, blue: 0.9525166154, alpha: 1))]), center: .center), style: StrokeStyle(lineWidth: 15.0, lineCap: .round, lineJoin: .round))
                .rotationEffect((Angle(degrees: 270)))
                .animation(.easeInOut(duration: 1.0), value: progress)
        }
        .frame(width: 250, height: 250)
        .padding()
    }
}

struct ProgressRing_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRing()
    }
}
