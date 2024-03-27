//  /*
//
//  Project: LottieAnimation
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 27.03.2024
//
//  */

import SwiftUI
import Lottie

// .json      - Old
// .dotLottie - New

struct ContentView: View {
    var body: some View {
        VStack {
            LottieView(animation: .named("AiAnimation"))
        }
    }
}

#Preview {
    ContentView()
}
