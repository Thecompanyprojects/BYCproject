//
//  SLTabBarController.swift
//  BycProject
//
//  Created by 王俊钢 on 2019/10/12.
//  Copyright © 2019 wangjungang. All rights reserved.
//

import UIKit

class SLTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewControllers()
        // Do any additional setup after loading the view.
    }
    
    // 添加子控制器
    private func addChildViewControllers() {
        setChildViewController(HomeViewController(), title: "首页", imageName: "")
        setChildViewController(FindViewController(), title: "找装修", imageName: "")
        setChildViewController(ChangeViewController(), title: "选建材", imageName: "")
        setChildViewController(MineViewController(), title: "我的", imageName: "")
    }
    
    /// 初始化子控制器
    private func setChildViewController(_ childController: UIViewController, title: String, imageName: String) {
        // 设置 tabbar 文字和图片
        if title=="首页" {
            childController.tabBarItem.image = UIImage.init(named: "icon_shouye")
            childController.tabBarItem.selectedImage = UIImage.init(named: "icon_shouye_jihuo")
        }
        if title=="找装修" {
            childController.tabBarItem.image = UIImage.init(named: "icon_zhuangxiu_jihuo")
            childController.tabBarItem.selectedImage = UIImage.init(named: "icon_zhuangxiu")
        }
        if title=="选建材" {
            childController.tabBarItem.image = UIImage.init(named: "icon_jiancai_jihuo")
            childController.tabBarItem.selectedImage = UIImage.init(named: "icon_jiancai")
        }
        if title=="我的" {
            childController.tabBarItem.image = UIImage.init(named: "icon_wo_jihuo")
            childController.tabBarItem.selectedImage = UIImage.init(named: "icon_wo")
        }
        childController.title = title
        self.tabBar.tintColor = MainColor
        let navVc = SLNavigationController(rootViewController: childController)
        addChild(navVc)
    }
    
}
