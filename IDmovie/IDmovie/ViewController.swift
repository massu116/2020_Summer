//
//  ViewController.swift
//  IDmovie
//
//  Created by massu_fun on 2020/08/16.
//  Copyright © 2020 massu_fun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.setTitle("ただいま", for: .normal)
        
        let buttonSize = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.font = buttonSize
        
    }
        
    
    @IBAction func nextbutton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "toNext") as! NextViewController
        self.present(vc, animated: true, completion: nil)
    }
     
}

