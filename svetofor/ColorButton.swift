//
//  ColorButton.swift
//  svetofor
//
//  Created by fd on 16.10.2020.
//

import SwiftUI

struct ColorButton: View {
    
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            
        }
        .frame(width: 200, height: 60)
        .background(Color(.gray))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct ColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ColorButton(title: "Да", action: {})
    }
}
