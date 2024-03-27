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
        LottieView(animation: .named("AiAnimation"))
            .configure({ lottieAnimationView in
                lottieAnimationView.contentMode = .scaleAspectFill
                lottieAnimationView.shouldRasterizeWhenIdle = true
            })
            .playbackMode(.playing(.toProgress(1, loopMode: .autoReverse)))
//            .playbackMode(.paused(at: .progress(0.8))) // MARK: - Specific part
            .animationDidFinish { completed in
                // Do some, execute newxt screen
            }
        
    }
}

#Preview {
    ContentView()
}
