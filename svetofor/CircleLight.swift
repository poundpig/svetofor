//
//  CircleLight.swift
//  svetofor
//
//  Created by fd on 16.10.2020.
//

import SwiftUI

struct CircleLight: View {
    let color: UIColor
    let opacity: Double
    
    var body: some View {
        Color(color)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 1))
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleLight(color: .red, opacity: 0.3)
    }
}
