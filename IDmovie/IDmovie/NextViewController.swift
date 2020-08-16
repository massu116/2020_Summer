//
//  NextViewController.swift
//  IDmovie
//
//  Created by massu_fun on 2020/08/17.
//  Copyright © 2020 massu_fun. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var nextLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nextLabel.text = "遷移したでー"
        // Do any additional setup after loading the view.
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
