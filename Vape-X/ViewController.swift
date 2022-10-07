//
//  ViewController.swift
//  Vape-X
//
//  Created by Haroon Maqsood on 9/18/22.
//

import AVKit
import AVFoundation
import UIKit
import FirebaseAnalytics

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        launchScreenAnimation()
    }
    
    func launchScreenAnimation() {
        let videoPlayer = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "RingSmoke", ofType: "mp4") ?? ""))
        let layer = AVPlayerLayer(player: videoPlayer)
        layer.frame = view.bounds
        layer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(layer)
        view.backgroundColor = .clear
        videoPlayer.volume = 0
        videoPlayer.play()
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0) {
            let storyboard = UIStoryboard(name: "Welcome", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "Welcome")
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
