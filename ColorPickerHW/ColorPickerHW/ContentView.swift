//  ContentView.swift
//  ColorPickerHW
//  Created by Carolina on 16.02.23.

import SwiftUI

struct ContentView: View {
    @State private var selection: CGColor = CGColor(red: 1, green: 0.5, blue: 0.5, alpha: 1)
    @State private var newColor: CGColor = CGColor(red: 1, green: 0.5, blue: 0.5, alpha: 1)
    
    var body: some View {
        ZStack {
            Color(.gray).ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                
                RoundedRectangleConfig(color: $selection, newColor: $newColor, radius: 50)
                
                Spacer()
                
                ColorPicker("Choose color", selection: $selection)
                    .foregroundColor(Color(selection))
                    .font(.system(size: 25))
                    .padding()
                
                Spacer()
                
                Button("Change color") {
                   checkColor()
                }
                .foregroundColor(Color(newColor))
                .font(.system(size: 25))
                
                Spacer()
            }
            .padding()
        }
    }
}

extension ContentView {
    private func checkColor() {
        newColor = selection
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
