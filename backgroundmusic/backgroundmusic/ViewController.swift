//
//  ViewController.swift
//  Background Music
//
//  Created by Victoria Mai on 7/31/19.
//  Copyright © 2019 Victoria Mai. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    

    var musicEffect: AVAudioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let musicFile = Bundle.main.path(forResource: "calming_ocean_waves", ofType: ".mp3")
        
        do {
            
            try musicEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
            
        }
            
        catch {
            
            print(error)
        }
        bob()
    }
    @IBAction func playMusic(_ sender: Any) {
        musicEffect.play()
        
    }
    func bob() {
        musicEffect.play()
        
    }
    
    @IBAction func stopMusic(_ sender: Any) {
        musicEffect.stop()
    }
    
    
}









