//
//  NextViewController.swift
//  IDmovie
//
//  Created by massu_fun on 2020/08/17.
//  Copyright © 2020 massu_fun. All rights reserved.
//

import UIKit
import AVFoundation

class NextViewController: UIViewController {

    @IBOutlet weak var startbutton: UIButton!
    @IBOutlet weak var nextLabel: UILabel!
    
    let path = Bundle.main.bundleURL.appendingPathComponent("id.mp3")
    var musicPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startbutton.setTitle("start", for: .normal)
        
        let buttonSize = UIFont.systemFont(ofSize: 30)
        startbutton.titleLabel?.font = buttonSize
        // Do any additional setup after loading the view.
    }
    

    @IBAction func startbutton(_ sender: Any) {
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: path)
            musicPlayer.play()
        }catch{
            print("error")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
