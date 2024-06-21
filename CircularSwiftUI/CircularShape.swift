//
//  CircularShape.swift
//  CircularSwiftUI
//
//  Created by Mustafa DANIŞAN on 14.06.2024.
//

import SwiftUI
import Foundation


// Her bir çemberin tek bir genel çemberde tanımlamasının yapılmış hali
struct CircularShape: Shape {
    
    var percent : Double
    var startAngel : Double
    
    typealias AnimatableData = Double
    var animatableData: Double {
        get {
            return percent
        }
        set {
            percent = newValue
        }
    }
    
    init(percent : Double = 100, startAngel : Double = -90) {
        self.percent = percent
        self.startAngel = startAngel
    }
    
    func path(in rect: CGRect) -> Path {
        let width = rect.width
        let height = rect.height
        let radius = min(width,height) / 2
        let center = CGPoint(x: width / 2, y: height / 2)
        let endAngel = (self.percent / 100 * 360) + self.startAngel
        
        return Path { path in
            path.addArc(center: center, radius: radius, startAngle: Angle(degrees: startAngel), endAngle: Angle(degrees: endAngel), clockwise: false)
        }
    }
    
    
}
