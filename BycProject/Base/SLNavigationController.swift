//
//  SLNavigationController.swift
//  BycProject
//
//  Created by 王俊钢 on 2019/10/12.
//  Copyright © 2019 wangjungang. All rights reserved.
//

import UIKit

class SLNavigationController: UINavigationController,UIGestureRecognizerDelegate,UINavigationControllerDelegate {

    override func viewDidLoad() {
         super.viewDidLoad()
         
         //导航栏背景颜色
         UINavigationBar.appearance().isTranslucent = false
         UINavigationBar.appearance().barTintColor =  UIColor.white
         
         //导航标题文字
         UINavigationBar.appearance().titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white,
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 19)
         ]
         
         //添加手势代理
         self.interactivePopGestureRecognizer?.delegate = self
         self.delegate = self
     }
     
     override func pushViewController(_ viewController: UIViewController, animated: Bool) {
         if self.viewControllers.count > 0 {
             //添加手势识别
             self.interactivePopGestureRecognizer?.isEnabled = true
         }
          //是否开启动画由传入决定，不会造成冲突
         super.pushViewController(viewController, animated: animated)
     }
     
     func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
         if navigationController.viewControllers.count == 1 {
             self.interactivePopGestureRecognizer?.isEnabled = false
         }
     }


}
