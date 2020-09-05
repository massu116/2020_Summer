//
//  ViewController.swift
//  useSwiftLibrary
//
//  Created by massu_fun on 2020/08/29.
//  Copyright © 2020 massu_fun. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showAnimation()
    }

    func showAnimation() {
        let animationView = AnimationView(name: "test")
        animationView.frame = CGRect(x: 0, y: 300, width: view.bounds.width, height: view.bounds.height)
        //animationView.center = self.view.center
        //animationView.loopMode = .loop
        animationView.contentMode = .scaleAspectFit
        animationView.animationSpeed = 2

        view.addSubview(animationView)

        animationView.play{ finished in
            if finished{
                animationView.removeFromSuperview()
            }
        }
    }
}

