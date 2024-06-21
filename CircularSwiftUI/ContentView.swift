//
//  ContentView.swift
//  CircularSwiftUI
//
//  Created by Mustafa DANIŞAN on 14.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    // Sırası ile çemberlerin dıştan içe tanımlanması
    @State var firstCirclePercentage : Double = 0
    @State var secondCirclePercentage : Double = 0
    @State var thirdCirclePercentage : Double = 0
    @State var fourthCirclePercentage : Double = 0
    
    var body: some View {
        ZStack {
            // 1.Çember
            Circular(lineWidth: 40, backgroundColor: Color.blue.opacity(0.2), foregroundColor: Color.blue, percentage: firstCirclePercentage)
                .frame(width: 450, height: 450)
                .onTapGesture {
                    if self.firstCirclePercentage == 0 {
                        self.firstCirclePercentage = 60
                    }else {
                        self.firstCirclePercentage = 0
                    }
                }
            
            // 2.Çember
            Circular(lineWidth: 40, backgroundColor: Color.red.opacity(0.2), foregroundColor: Color.red, percentage: secondCirclePercentage)
                .frame(width: 350, height: 350)
                .onTapGesture {
                    if self.secondCirclePercentage == 0 {
                        self.secondCirclePercentage = 80
                    }else {
                        self.secondCirclePercentage = 0
                    }
                }
            
            // 3.Çember
            Circular(lineWidth: 40, backgroundColor: Color.purple.opacity(0.2), foregroundColor: Color.purple, percentage: thirdCirclePercentage)
                .frame(width: 250, height: 250)
                .onTapGesture {
                    if self.thirdCirclePercentage == 0 {
                        self.thirdCirclePercentage = 40
                    }else {
                        self.thirdCirclePercentage = 0
                    }
                }
            
            // 4.Çember
            Circular(lineWidth: 40, backgroundColor: Color.green.opacity(0.2), foregroundColor: Color.green, percentage: fourthCirclePercentage)
                .frame(width: 150, height: 150)
                .onTapGesture {
                    if self.fourthCirclePercentage == 0 {
                        self.fourthCirclePercentage = 90
                    }else {
                        self.fourthCirclePercentage = 0
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
