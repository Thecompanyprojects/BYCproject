//
//  HomeViewController.swift
//  BycProject
//
//  Created by 王俊钢 on 2019/10/12.
//  Copyright © 2019 wangjungang. All rights reserved.
//

import UIKit



class HomeViewController: BaseViewController,UITextFieldDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

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
        
    }
    
    @objc func leftClick1()
    {
        
    }

    @objc func tapSearch(){

        print("tap the tapSearch")

    }}

    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }

