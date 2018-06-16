//
//  ViewController.swift
//  CountApp
//
//  Created by Yuki Nabeshima on 2018/06/15.
//  Copyright © 2018年 Yuki Nabeshima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number:Int = 0
    //varを忘れずに
    //varは変数で参照を変えられる
    //valはfinal変数的なもので参照を変えられない
    
    //スペースを空けることを忘れずに
    @IBOutlet var label: UILabel!
    //@IBOutlet、@IBActionで宣言するとstoryboardからも認識される。
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //とりあえずここはそのまんまで
    
    
    //+ボタンを押した時の動作
    @IBAction func plus(){
        
        number = number + 1
        //int型のnumberを+1する
        //int = 32bit整数。小数を絶対に含まない。
        
        label.text = String(number)
        //nunberをtextに当てはめる、表示する
        
        if number >= 10{
            //もしnumberが10以下だったら
            label.textColor = UIColor.red
            //textの色を赤にする(UIColorというのがデフォルトで入っている指定されている色)
        }else{
            //それ以外だったら（10より大きかったら）
            label.textColor = UIColor.blue
            //textの色を青にする
        }
    }
    
    
    //-ボタンを押した時の動作
    @IBAction func minus(){
        number = number - 1
        //int型のnumberを-1する
        label.text = String(number)
        
        changeColor()
        //メソッド呼ぶのもあり(最初にやるものではない)
        
    }
    
    //×ボタンを押した時の処理
    @IBAction func multiply(){
        number = number * 2
        //int型のnumberを*2する
        
        label.text = String(number)
        
        changeColor()
    }
    
    //÷ボタンを押した時の処理
    @IBAction func divide(){
        number = number / 2
        //int型のnumberを÷2する
        
        label.text = String(number)
        
        changeColor()
    }
    
    
    //色を変えるメソッド
    func changeColor() {
        if number >= 10{
            //もしnumberが10以下だったら
            label.textColor = UIColor.red
            //textの色を赤にする(UIColorというのがデフォルトで入っている指定されている色)
        }else{
            //それ以外だったら（10より大きかったら）
            label.textColor = UIColor.blue
            //textの色を青にする
        }
        
    }
    
    
}
