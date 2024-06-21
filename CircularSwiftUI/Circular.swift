//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by Mustafa DANIŞAN on 14.06.2024.
//

import SwiftUI

// Çemberlerin nasıl duracapğının kabaca tasarımı ve tanımlaması
struct Circular: View {
    
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgroundColor)
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(foregroundColor)
            }
            .animation(.easeIn(duration: 1.0), value: percentage)
            .padding(lineWidth / 1)
        }
    }
}

#Preview {
    Circular(lineWidth: 20, backgroundColor: .red, foregroundColor: .green, percentage: 50)
}
