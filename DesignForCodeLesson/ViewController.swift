//
//  ViewController.swift
//  DesignForCodeLesson
//
//  Created by 寺島 洋平 on 2019/08/27.
//  Copyright © 2019年 YoheiTerashima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var customView: CustomView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView = CustomView()
        view.addSubview(customView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // customViewのframeが変更されると、customViewのlayoutSubviewsが呼ばれ
        // customViewのlabelのframeも更新される
        customView.frame = CGRect(x: view.frame.origin.x + 50, y: view.safeAreaInsets.top + 50, width: view.frame.width - 50 * 2, height: 200)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// CustomViewの定義
// UIViewを継承し、labelを保持している
class CustomView: UIView {
    var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
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
        addSubview(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init with coder is not implemented")
    }
    
    // layoutを変更すべき時に呼ばれるメソッド
    // labelの座標をCustomViewの座標を起点にレイアウトしている
    // この時frameではなくbounsを使う
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.frame = CGRect(x: bounds.origin.x + 50, y: bounds.origin.y, width: frame.width - 50 * 2, height: 100)
    }
}

