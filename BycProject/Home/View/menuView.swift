//
//  menuView.swift
//  BycProject
//
//  Created by 王俊钢 on 2019/10/12.
//  Copyright © 2019 wangjungang. All rights reserved.
//

import UIKit
import SnapKit

class menuView: UIView {

    
    public let chooseView0:UIView = {
        let chooseView0 = UIView()
        return chooseView0
    }()
    
    public let chooseView1:UIView = {
         let chooseView1 = UIView()
         return chooseView1
     }()
    
    public let chooseView2:UIView = {
         let chooseView2 = UIView()
         return chooseView2
     }()
    
    public let chooseView3:UIView = {
         let chooseView3 = UIView()
         return chooseView3
     }()
    
    public let chooseView4:UIView = {
         let chooseView4 = UIView()
         return chooseView4
     }()
    
    
    public let showView0 : UIImageView = {
        let img = UIImageView.init()
        img.image = UIImage.init(named: "icon_3d")
        return img
    }()

    public let showView1 : UIImageView = {
        let img = UIImageView.init()
        img.image = UIImage.init(named: "icon_xyong")
        return img
    }()
    
    public let showView2 : UIImageView = {
        let img = UIImageView.init()
        img.image = UIImage.init(named: "icon_shigong")
        return img
    }()
    
    private let img0 :UIImageView = {
        let img0 = UIImageView()
        img0.image = UIImage.init(named: "icon_baojia")
        return img0
    }()
    
    private let img1:UIImageView={
        let img1 = UIImageView()
        img1.image = UIImage.init(named: "icon_zhuangxiu-1")
        return img1
    }()
    
    private let img2:UIImageView={
        let img2 = UIImageView()
        img2.image = UIImage.init(named: "icon_jiancai-1")
        return img2
    }()
    
    private let img3:UIImageView={
        let img3 = UIImageView()
        img3.image = UIImage.init(named: "icon_anli")
        return img3
    }()
    
    private let img4:UIImageView={
        let img4 = UIImageView()
        img4.image = UIImage.init(named: "icon_sheji")
        return img4
    }()
    
    private let title0:UILabel = {
        let title0 = UILabel()
        title0.text = "算报价"
        title0.textAlignment = NSTextAlignment.center
        title0.font = UIFont.systemFont(ofSize: 13)
        title0.textColor = UIColor(hex: "333333")
        return title0
    }()
    
    private let title1:UILabel = {
        let title1 = UILabel()
        title1.text = "装修公司"
        title1.textAlignment = NSTextAlignment.center
        title1.font = UIFont.systemFont(ofSize: 13)
        title1.textColor = UIColor(hex: "333333")
        return title1
    }()
    
    private let title2:UILabel = {
        let title2 = UILabel()
        title2.text = "建材家具"
        title2.textAlignment = NSTextAlignment.center
        title2.font = UIFont.systemFont(ofSize: 13)
        title2.textColor = UIColor(hex: "333333")
        return title2
    }()
    
    private let title3:UILabel = {
        let title3 = UILabel()
        title3.text = "装修案例"
        title3.textAlignment = NSTextAlignment.center
        title3.font = UIFont.systemFont(ofSize: 13)
        title3.textColor = UIColor(hex: "333333")
        return title3
    }()
    
    private let title4:UILabel = {
        let title4 = UILabel()
        title4.text = "找设计"
        title4.textAlignment = NSTextAlignment.center
        title4.font = UIFont.systemFont(ofSize: 13)
        title4.textColor = UIColor(hex: "333333")
        return title4
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(frame: CGRect) {
         
        super.init(frame: frame)
        self.addSubview(chooseView0)
        self.addSubview(chooseView1)
        self.addSubview(chooseView2)
        self.addSubview(chooseView3)
        self.addSubview(chooseView4)
        self.addSubview(showView0)
        self.addSubview(showView1)
        self.addSubview(showView2)
        layout()
        addViews()
    }
    
    @objc func layout()
    {
        
        self.chooseView2.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.top.equalTo(self.snp_top).offset(4)
            make.height.equalTo(60)
            make.width.equalTo(SCREEN_WIDTH/5)
        }
        
        self.chooseView0.snp.makeConstraints { (make) in
            make.top.equalTo(self.chooseView2)
            make.left.equalTo(self)
            make.height.equalTo(60)
            make.width.equalTo(SCREEN_WIDTH/5)
        }
        
        self.chooseView1.snp.makeConstraints { (make) in
            make.top.equalTo(self.chooseView2)
            make.left.equalTo(self.chooseView0.snp_right)
            make.height.equalTo(60)
            make.width.equalTo(SCREEN_WIDTH/5)
        }
        
        self.chooseView3.snp.makeConstraints { (make) in
            make.top.equalTo(self.chooseView2)
            make.left.equalTo(self.chooseView2.snp_right)
            make.height.equalTo(60)
            make.width.equalTo(SCREEN_WIDTH/5)
        }
        
        self.chooseView4.snp.makeConstraints { (make) in
            make.top.equalTo(self.chooseView2)
            make.height.equalTo(60)
            make.width.equalTo(SCREEN_WIDTH/5)
            make.right.equalTo(self)
        }
        
        self.showView1.snp.makeConstraints { (make) in
            make.top.equalTo(self.chooseView2.snp_bottom).offset(37)
            make.centerX.equalTo(self)
            make.width.equalTo(109*width_scale)
            make.height.equalTo(61)
        }
        
        self.showView0.snp.makeConstraints { (make) in
            make.top.equalTo(self.showView1)
            make.width.equalTo(109*width_scale)
            make.height.equalTo(61)
            make.right.equalTo(self.showView1.snp_left).offset(-13)
        }
        
        self.showView2.snp.makeConstraints { (make) in
            make.top.equalTo(self.showView1)
            make.width.equalTo(109*width_scale)
            make.height.equalTo(61)
            make.left.equalTo(self.showView1.snp_right).offset(13)
        }
    }
    
    @objc func addViews()
    {
        self.chooseView0.addSubview(self.img0)
        self.chooseView0.addSubview(self.title0)
        self.chooseView1.addSubview(self.img1)
        self.chooseView1.addSubview(self.title1)
        self.chooseView2.addSubview(self.img2)
        self.chooseView2.addSubview(self.title2)
        self.chooseView3.addSubview(self.img3)
        self.chooseView3.addSubview(self.title3)
        self.chooseView4.addSubview(self.img4)
        self.chooseView4.addSubview(self.title4)
        
        self.img0.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.chooseView0)
            make.width.equalTo(23)
            make.height.equalTo(25)
            make.top.equalTo(self.chooseView0).offset(20)
        }
        self.title0.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.chooseView0)
            make.top.equalTo(self.img0.snp_bottom).offset(13)
            make.left.equalTo(self.chooseView0)
            make.right.equalTo(self.chooseView0)
        }
        
        self.img1.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.chooseView1)
            make.width.equalTo(27)
            make.height.equalTo(27)
            make.top.equalTo(self.chooseView1).offset(20)
        }
        self.title1.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.chooseView1)
            make.top.equalTo(self.img0.snp_bottom).offset(13)
            make.left.equalTo(self.chooseView1)
            make.right.equalTo(self.chooseView1)
        }
        
        self.img2.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.chooseView2)
            make.width.equalTo(27)
            make.height.equalTo(24)
            make.top.equalTo(self.chooseView2).offset(20)
        }
        self.title2.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.chooseView2)
            make.top.equalTo(self.img0.snp_bottom).offset(13)
            make.left.equalTo(self.chooseView2)
            make.right.equalTo(self.chooseView2)
        }
        
        self.img3.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.chooseView3)
            make.width.equalTo(24)
            make.height.equalTo(25)
            make.top.equalTo(self.chooseView2).offset(20)
         }
         self.title3.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.chooseView3)
            make.top.equalTo(self.img0.snp_bottom).offset(13)
            make.left.equalTo(self.chooseView3)
            make.right.equalTo(self.chooseView3)
         }
        
        self.img4.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.chooseView4)
            make.width.equalTo(23)
            make.height.equalTo(23)
            make.top.equalTo(self.chooseView4).offset(20)
        }
        self.title4.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.chooseView4)
            make.top.equalTo(self.img0.snp_bottom).offset(13)
            make.left.equalTo(self.chooseView4)
            make.right.equalTo(self.chooseView4)
        }
    }
}
