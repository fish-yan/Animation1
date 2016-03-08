//
//  ViewController.swift
//  Animation1
//
//  Created by 薛焱 on 16/3/8.
//  Copyright © 2016年 薛焱. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animationView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //ios中我们能看到的控件都是UIView的子类,比如Button等
        //UIView能够在屏幕上显示,是应为在创建他的时候内部自动添加一个CALayer图层,通过这个图层,在屏幕上显示的时候会电泳一个drawRect的方法完成绘图,才能在屏幕上显示,1
        //CALayer本身具有显示功能,但是他不能相应用户的交互事件,如果只是单纯的向显示一个图形此时可以使用CALayer创建,或者是使用UIView创建但是如果这个图形想相应用户的交互事件必须使用UIView或他的子类
        //取到当前视图控制器自带view的图层
        
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func animationAction(sender: AnyObject) {
        //属性动画
        self.propertyAnimation()
        //过度动画
    }
    //可动画的属性 :frame,center,bounds alpha,background,tranform
    //修改属性做动画,属性修改的结果是真实的作用在动画的视图上,不能恢复到以前的样子;
    //属性动画
    func propertyAnimation(){
        /*
        //1、
        UIView.animateWithDuration(1) { () -> Void in
            var center = self.animationView.center
            //y轴位置
            center.y += 50
            self.animationView.center = center
            //透明度
            self.animationView.alpha = 0.2
            //旋转
            self.animationView.transform = CGAffineTransformRotate(self.animationView.transform, CGFloat(M_PI))
        }
        */
        /*
        //2、
        UIView.animateWithDuration(1, animations: { () -> Void in
            //缩放
            self.animationView.transform = CGAffineTransformScale(self.animationView.transform, 0.5, 0.5)
            }) { (finished: Bool) -> Void in
                //动画完成后操作，回到最初状态
                self.animationView.transform = CGAffineTransformIdentity
        }
        */
        /*
        //3、
        UIView.animateWithDuration(1, delay: 1, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            //每次都以中心点为参照进行位移
            self.animationView.transform = CGAffineTransformTranslate(self.animationView.transform, 10, 50)
            }) { (finshed: Bool) -> Void in
                
        }
        */
        
        //4.
        //01.动画持续 的时长
        //02.延迟时间
        //03.动画弹回强度
        //04.设置弹回速度
        UIView.animateWithDuration(5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 20, options: UIViewAnimationOptions.TransitionNone, animations: { () -> Void in
            var center = self.animationView.center
            center.y += 50
            self.animationView.center = center
            self.animationView.backgroundColor = UIColor.blueColor()
            self.animationView.transform = CGAffineTransformScale(self.animationView.transform, 0.5, 0.5);
            }) { (finished: Bool) -> Void in
                var center = self.animationView.center
                center.y -= 50
                self.animationView.center = center
                self.animationView.backgroundColor = UIColor.redColor()
                self.animationView.transform = CGAffineTransformScale(self.animationView.transform, 2, 2);
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

