//
//  ContentView.swift
//  svetofor
//
//  Created by fd on 16.10.2020.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "Старт"
    @State private var currentColor = CurrentLight.red
    
    private func nextColor() {
        switch currentColor {
        case .red: currentColor = .yellow
        case .yellow: currentColor = .green
        case .green: currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color(.lightGray)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                CircleLight(color: .red, opacity: currentColor == .red ? 1 : 0.3)
                CircleLight(color: .yellow, opacity: currentColor == .yellow ? 1 : 0.3)
                CircleLight(color: .green, opacity: currentColor == .green ? 1 : 0.3)
                
                Spacer()
                
                ColorButton(title: buttonTitle) {
                    self.buttonTitle = "Далее"
                    self.nextColor()
                }
            }
            .padding()
        }
    }
}
