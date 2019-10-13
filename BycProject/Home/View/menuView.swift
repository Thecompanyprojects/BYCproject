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

    
    public let img0 :UIImageView = {
        let img0 = UIImageView()
        img0.image = UIImage.init(named: "icon_baojia")
        return img0
    }()
    
    public let img1:UIImageView={
        let img1 = UIImageView()
        img1.image = UIImage.init(named: "icon_zhuangxiu-1")
        return img1
    }()
    
    public let img2:UIImageView={
        let img2 = UIImageView()
        img2.image = UIImage.init(named: "icon_zhucaifucai")
        return img2
    }()
    
    public let img3:UIImageView={
        let img3 = UIImageView()
        img3.image = UIImage.init(named: "icon_anli")
        return img3
    }()
    
    public let img4:UIImageView={
        let img4 = UIImageView()
        img4.image = UIImage.init(named: "icon_sheji")
        return img4
    }()
    
    public let title0:UILabel = {
        let title0 = UILabel()
        title0.text = "算报价"
        title0.textAlignment = NSTextAlignment.center
        title0.font = UIFont.systemFont(ofSize: 13)
        title0.textColor = UIColor(hex: "333333")
        return title0
    }()
    
    public let title1:UILabel = {
        let title1 = UILabel()
        title1.text = "装修公司"
        title1.textAlignment = NSTextAlignment.center
        title1.font = UIFont.systemFont(ofSize: 13)
        title1.textColor = UIColor(hex: "333333")
        return title1
    }()
    
    public let title2:UILabel = {
        let title2 = UILabel()
        title2.text = "建材家具"
        title2.textAlignment = NSTextAlignment.center
        title2.font = UIFont.systemFont(ofSize: 13)
        title2.textColor = UIColor(hex: "333333")
        return title2
    }()
    
    public let title3:UILabel = {
        let title3 = UILabel()
        title3.text = "装修案例"
        title3.textAlignment = NSTextAlignment.center
        title3.font = UIFont.systemFont(ofSize: 13)
        title3.textColor = UIColor(hex: "333333")
        return title3
    }()
    
    public let title4:UILabel = {
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
        self.addSubview(img0)
        self.addSubview(img1)
        self.addSubview(img2)
        self.addSubview(img3)
        self.addSubview(img4)
        self.addSubview(title0)
        self.addSubview(title1)
        self.addSubview(title2)
        self.addSubview(title3)
        self.addSubview(title4)
        layout()
    }
    
    @objc func layout()
    {
        self.img2.snp.makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.top.equalTo(self).offset(40)
            
        }
        
    }


}
