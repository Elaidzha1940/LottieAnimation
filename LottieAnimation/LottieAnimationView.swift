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
    var fileName: String = "AiAnimation"
    var contentMode: UIView.ContentMode = .scaleAspectFill
    var playLoopMood: LottieLoopMode = .loop
    var onAnimationDidFinish: (() -> Void)? = nil
    
    var body: some View {
        LottieView(animation: .named(fileName))
            .configure({ lottieAnimationView in
                lottieAnimationView.contentMode = contentMode
                //                lottieAnimationView.shouldRasterizeWhenIdle = true
            })
            .playbackMode(.playing(.toProgress(1, loopMode: playLoopMood)))
        
        //            .playbackMode(.paused(at: .progress(0.8))) // MARK: - Specific part
            .animationDidFinish { completed in
                onAnimationDidFinish?()
                // Do something  here, execute next screen.
            }
    }
}

#Preview {
    ContentView()
}
