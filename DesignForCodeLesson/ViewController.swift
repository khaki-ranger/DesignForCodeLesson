//
//  ViewController.swift
//  DesignForCodeLesson
//
//  Created by 寺島 洋平 on 2019/08/27.
//  Copyright © 2019年 YoheiTerashima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ラベルを生成する
        label = UILabel()
        // ラベルのテキストを指定する
        label.text = "Hello!"
        // ラベルのテキストを中央寄せにする
        label.textAlignment = NSTextAlignment.center
        // ラベルのテキストカラーを変える
        label.textColor = UIColor.white
        // ラベルの背景色を変える
        label.backgroundColor = UIColor.red
        // ラベルをViewControllerのviewの上に乗せる
        view.addSubview(label)

        // ボタンを生成
        button = UIButton()
        // ボタンの背景色を変える
        button.backgroundColor = UIColor.black
        // ボタンをViewControllerのviewの上に乗せる
        view.addSubview(button)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // このメソッド内でsafeAreaInsetsを元にレイアウトを組む
        // ラベルのレイアウトを決める
        label.frame = CGRect(x: view.frame.origin.x + 50, y: 50, width: view.frame.width - 50 * 2, height: 100)
        // ボタンのレイアウトを決める
        button.frame = CGRect(x: label.frame.maxX + 10, y: label.frame.maxY + 30, width: 30, height: 100)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

