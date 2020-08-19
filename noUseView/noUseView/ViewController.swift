//
//  ViewController.swift
//  noUseView
//
//  Created by massu_fun on 2020/08/19.
//  Copyright © 2020 massu_fun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //UILabelをインスタンス化
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //ラベルテキストの設定
        label.text = "おかえり"
        //テキストのカラーを設定
        label.textColor = .white
        //背景色の設定
        label.backgroundColor = .black
        //場所と大きさの設定
        label.frame = CGRect(x: 50, y: 50, width: 300, height: 100)
        //ラベルの角を丸める
        label.layer.cornerRadius = 20
        label.clipsToBounds = true
        //ラベルテキストをセンター寄せ
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont.systemFont(ofSize: 30)
        //ラベルをビューに追加
        self.view.addSubview(label)
    }


}

