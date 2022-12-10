//
//  ContentView.swift
//  TrafficLight
//
//  Created by Айтолкун Анарбекова on 9/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    @State var buttonTitle = "START"
    @State var redOpacity = 0.3
    @State var yellowOpacity = 0.3
    @State var greenOpacity = 0.3
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                circles
                Spacer()
                button
            }
        }
    }
    private var circles: some View {
        VStack {
            CircleView()
                .foregroundColor(.red).opacity(redOpacity)
                .padding(.top)
                .padding(.bottom)
            CircleView()
                .foregroundColor(.yellow).opacity(yellowOpacity)
                .padding(.bottom)
            CircleView()
                .foregroundColor(.green).opacity(greenOpacity)
        }
    }
    private var button: some View {
        
        Button(action: swichColor) {
            Text(buttonTitle)
                .font(.title)
                .fontWeight(.medium)
                .frame(width: 150, height: 25)
                .padding()
                .foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 4)
                )
                .shadow(radius: 10)
            
        }
        .background(Color.blue)
        .cornerRadius(20)
        .padding(.bottom)
    }
    
    private func swichColor() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        switch currentLight {
        case .red:
            redOpacity = 1
            greenOpacity = 0.3
            currentLight = .yellow
        case .yellow:
            yellowOpacity = 1
            redOpacity = 0.3
            currentLight = .green
        case .green:
            greenOpacity = 1
            yellowOpacity = 0.3
            currentLight = .red
        }
    }
    
    private enum CurrentLight {
        case red, yellow, green
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
