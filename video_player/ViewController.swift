//
//  ViewController.swift
//  video_player
//
//  Created by Rodion Samoilov on 11/20/22.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    private func playVideo(){
        guard let path=Bundle.main.path(forResource: "Facebook gives a glimpse of metaverse, its planned virtual reality world", ofType: "mp4") else {
            debugPrint("Facebook gives a glimpse of metaverse, its planned virtual reality world.mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true){
            player.play()
        }
    }
}

