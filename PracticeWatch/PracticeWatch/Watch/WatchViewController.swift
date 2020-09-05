//
//  WatchViewController.swift
//  PracticeWatch
//
//  Created by massu_fun on 2020/08/25.
//  Copyright © 2020 massu_fun. All rights reserved.
//

import UIKit

class WatchViewController: UIViewController{
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        getTime()
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(getTime), userInfo: nil, repeats: true)
    }
    
    @objc func getTime(){
        let formatter = DateFormatter()
        let dt = Date()
        
        formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyy/MM/dd", options: 0, locale: Locale(identifier: "ja_JP"))
        //print(formatter.string(from: dt))
        dateLabel.text = formatter.string(from: dt)
        
        formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "HH/mm/ss", options: 0, locale: Locale(identifier: "ja_JP"))
        timeLabel.text = formatter.string(from: dt)
    }
}
