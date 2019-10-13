//
//  HomeViewController.swift
//  BycProject
//
//  Created by 王俊钢 on 2019/10/12.
//  Copyright © 2019 wangjungang. All rights reserved.
//

import UIKit



class HomeViewController: SegmentBaseVC {

    let menu = menuView.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        changeUI()
    }
    
    @objc func changeUI()
    {
        let leftItemButton = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        leftItemButton.backgroundColor = UIColor.clear
        leftItemButton.set(image: UIImage(named: "icon_xiaosanjiao"), title: "北京市", titlePosition: .left,
            additionalSpacing: -12, state: UIControl.State.normal)
        leftItemButton.titleLabel?.font = UIFont.systemFont(ofSize: CGFloat(14.0))
        leftItemButton.setTitleColor(UIColor(hex: "010101"), for: UIControl.State.normal)
        leftItemButton .addTarget(self, action: #selector(leftClick1), for: UIControl.Event.touchUpInside)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftItemButton)
        
        let search = UIView(frame: CGRect(x:0, y:0, width:400, height:30))
        search.backgroundColor = UIColor(hex: "F3F3F3")
        self.navigationItem.titleView = search
        search.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(tapSearch))
        search.addGestureRecognizer(tap)
        
        let leftImg = UIImageView.init()
        search.addSubview(leftImg)
        leftImg.image = UIImage.init(named: "icon_sousuo")
        leftImg.snp.makeConstraints { (make) in
            make.width.equalTo(18)
            make.height.equalTo(18)
            make.left.equalTo(search.snp_left).offset(13)
            make.centerY.equalTo(search)
        }
        
        let rightImg = UIImageView.init()
        search.addSubview(rightImg)
        rightImg.image = UIImage.init(named: "icon_yuy")
        rightImg.snp.makeConstraints { (make) in
            make.width.equalTo(12)
            make.height.equalTo(18)
            make.centerY.equalTo(search)
            make.right.equalTo(search.snp_right).offset(-13)
        }
        
        self.menu.frame = CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: 180)
        self.view.addSubview(self.menu)
        
    }
    //MARK:点击事件
    @objc func leftClick1()
    {
        
    }

    @objc func tapSearch(){

        print("tap the tapSearch")

    }
    
    //MARK: - 子控件视图
    let topBarV = UIView()
    let contentContainerV = UIView()
       
    // 子类重写这个方法
    override func selectIndex(index: Int){
             
    }
    override func addSegmentBar() {
        
        let titles = ["找案例", "找商品","找公司","找攻略","效果图"]
        let vc1 = BaseViewController()
        let vc2 = BaseViewController()
        let vc3 = BaseViewController()
        let vc4 = BaseViewController()
        let vc5 = BaseViewController()
        let vcs = [vc1, vc2,vc3,vc4,vc5]
        
        // 添加标题和选择控制器
        segmentBarVC.setupTitlesAndChildVCs(titles: titles, childVCs: vcs)
        segmentBarVC.segmentBar.updateConfig {(config) in
            config.textNormalColor(UIColor.init(hex: "666666"))
                .textSelectColor(UIColor.init(hex: "444444"))
                .textNormalFont(UIFont.systemFont(ofSize: 16))
                .textSelectFont(UIFont.boldSystemFont(ofSize: 19))
                .barMaxWidth(UIScreen.main.bounds.width)
                .barHeight(44)
                .bottomLineHeight(0)
                .bottomLineColor(UIColor.blue)
                .isItemEqualWidth(true)
                .update()
            
        }
        
        addContainerV()
        
        self.topBarV.addSubview(segmentBarVC.segmentBar)
        self.addChild(segmentBarVC)
        segmentBarVC.view.frame = contentContainerV.bounds
        self.contentContainerV.addSubview(segmentBarVC.view)

    }
    
    private func addContainerV(){
      topBarV.frame = CGRect(x: 0, y: 170, width: UIScreen.main.bounds.width, height: 44)
      view.addSubview(topBarV)
      contentContainerV.frame = CGRect(x: 0, y: 44+170, width: UIScreen.main.bounds.width, height: view.bounds.height - 44 - kNavigationBarHeight-170)
      view.addSubview(contentContainerV)
    }
    
}



