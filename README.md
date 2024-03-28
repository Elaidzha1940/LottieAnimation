Lottie in SwiftUI | Swift Package.
===============

Lottie 4.3.0 now available, with official support for SwiftUI #2189
---------------
````ruby
https://github.com/airbnb/lottie-ios/discussions/2189
````
---------------

LottieFiles
---------------
````ruby
https://app.lottiefiles.com/
````
---------------

https://github.com/Elaidzha1940/LottieAnimation/assets/64445918/7c219f16-490a-4163-8bd0-b338ff266358

---------------

LottieAnimation
---------------
````ruby
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
````
-------------

