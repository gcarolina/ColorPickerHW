//  RoundedRectangle.swift
//  ColorPickerHW
//  Created by Carolina on 16.02.23.

import SwiftUI

struct RoundedRectangleConfig: View {
    
    @Binding var color: CGColor
    @Binding var newColor: CGColor
    
    var radius: CGFloat
    
    var body: some View {
        VStack(spacing: 20) {
            
            RoundedRectangle(cornerRadius: radius)
                .fill(Color(color))
                .frame(width: 300, height: 150)
                .overlay(
                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                        .stroke(Color.white, lineWidth: 5))
            
            
            RoundedRectangle(cornerRadius: radius)
                .fill(Color(newColor))
                .frame(width: 300, height: 150)
                .overlay(
                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                        .stroke(Color.white, lineWidth: 5))
            
        }
    }
}
