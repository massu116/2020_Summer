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
    @IBOutlet var idPhoto: UIView!
    @IBOutlet weak var nextLabel: UILabel!
    
    let path = Bundle.main.bundleURL.appendingPathComponent("id.mp3")
    var musicPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startbutton.setTitle("再生", for: .normal)
        
        let buttonSize = UIFont.systemFont(ofSize: 30)
        startbutton.titleLabel?.font = buttonSize
        
        //initImageView()
        // Do any additional setup after loading the view.
        
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: path)
            musicPlayer.play()
        }catch{
            print("error")
        }
         
    }
    
    /*
    private func initImageView(){
    
        //UIImageインスタンスの生成
        let image_id: UIImage = UIImage(named: "id_2")!
        
        //UIImage初期化
        let imageView = UIImageView(image: image_id)
        
        //スクリーンの縦横サイズ取得,CGFloat型で宣言
        let screenWidth:CGFloat = view.frame.size.width
        let screenHight:CGFloat = view.frame.size.height
        /*
        //画像の縦横サイズ取得
        let imgWidth:CGFloat = image_id.size.width
        let imgHeight:CGFloat = image_id.size.height
        */
        
        imageView.center = CGPoint(x:screenWidth/2,y: screenHight/2)
        
        self.view.addSubview(imageView)
    }
    */

    
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
