//
//  CircleView.swift
//  TrafficLight
//
//  Created by Айтолкун Анарбекова on 9/12/22.
//

import SwiftUI

struct CircleView: View {
    
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke( Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
