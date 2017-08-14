//
//  ViewController.swift
//  Player
//
//  Created by iOS Akademija on 8/14/17.
//  Copyright © 2017 iOS Akademija. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pogresSlider: UISlider!
    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var playFromProjectButton: UIButton!
    @IBOutlet weak var PlayFromURLButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    
    var player = AVAudioPlayer()
    var generalPlayer = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playFile_action(_ sender: Any) {
        let path = Bundle.main.path(forResource: "song", ofType: "mp3")
        let url = URL(string: path!)!
        
        do {
            try player = AVAudioPlayer(contentsOf: url)
        player.prepareToPlay()
        player.play()
            
        } catch {
            print("Error while playing: \(error)")
        }
        
    }
    
    @IBAction func stop_action(_ sender: Any) {

        player.stop()
        generalPlayer.rate = 0
    }
    @IBAction func pause_action(_ sender: Any) {
        
        let title = pauseButton.titleLabel!.text
        
        if title == "Pause" {
            pauseButton.setTitle("Play", for: UIControlState.normal)
            player.pause()
            generalPlayer.pause()
        } else {
            pauseButton.setTitle("Pause", for: UIControlState.normal)
            player.pause()
            generalPlayer.pause()
        }
        
        
    }
    @IBAction func play_url_action(_ sender: Any) {
        
        let string = "http://181fm-edge1.cdnstream.com/181-breeze_128k.mp3"
        let url = URL(string: string)!
        
        URLSession.shared.dataTask(with: url, completionHandler: {data,response,error in
            
            if error == nil {
                self.generalPlayer = AVPlayer(url: url)
                self.generalPlayer.play()
            }
        }).resume()
    }
}

