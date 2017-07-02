//
//  ViewController.swift
//  ViewAnimation
//
//  Created by watchman on 2017/7/2.
//  Copyright © 2017年 Hervey. All rights reserved.
//

import UIKit
var loginButtion:UIButton?
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loginButtion = UIButton(frame:CGRect(x:-394,y:230,width:self.view.frame.width-20*2,height:50))
        loginButtion!.backgroundColor = UIColor(red:50/255.0,green:185/255.0,blue:170/255.0,alpha:1.0)
        loginButtion!.setTitle("登录", for:UIControlState.normal)
        self.view.addSubview(loginButtion!)
        
    }
    override func viewWillAppear(_ animated: Bool) {
//        UIView.animate(withDuration: 1,animations:{
//            loginButtion!.frame = CGRect(x:20,y:loginButtion!.frame.origin.y,width:loginButtion!.frame.width,height:loginButtion!.frame.height)
//        })
        
        UIView.beginAnimations(nil, context: nil)//动画开始
        UIView.setAnimationDuration(1);//动画周期设置
         loginButtion!.frame = CGRect(x:20,y:loginButtion!.frame.origin.y,width:loginButtion!.frame.width,height:loginButtion!.frame.height) //动画位置设置
        UIView.commitAnimations() //动画提交
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

