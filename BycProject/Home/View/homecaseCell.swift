//
//  homecaseCell.swift
//  BycProject
//
//  Created by 王俊钢 on 2019/10/13.
//  Copyright © 2019 wangjungang. All rights reserved.
//

import UIKit

class homecaseCell: UITableViewCell {

    private let bgImg:UIImageView = {
        let img = UIImageView()
        img.layer.masksToBounds = true
        img.layer.cornerRadius = 8
        img.backgroundColor = UIColor.orange
        return img
    }()
    
    private let titleLab:UILabel = {
        let lab = UILabel()
        lab.textColor = UIColor.init(hex: "#363636")
        lab.font = UIFont.systemFont(ofSize: 12)
        return lab
    }()
    
    private let contentLab:UILabel = {
        let lab = UILabel()
        lab.textColor = UIColor.init(hex: "#666666")
        lab.font = UIFont.systemFont(ofSize: 10)
        return lab
    }()
    
    private let starLab:UILabel = {
        let lab = UILabel.init()
        lab.textColor = UIColor.init(hex: "666666")
        lab.textAlignment = NSTextAlignment.right
        lab.text = "332"
        lab.font = UIFont.systemFont(ofSize: 9)
        return lab
    }()
    
    private let starImg:UIImageView = {
        let img = UIImageView.init()
        img.image = UIImage.init(named: "icon_xx")
        return img
    }()
    
    
    private let seeLab:UILabel = {
        let lab = UILabel.init()
        lab.textColor = UIColor.init(hex: "666666")
        lab.textAlignment = NSTextAlignment.right
        lab.font = UIFont.systemFont(ofSize: 9)
        lab.text = "332"
        return lab
    }()
    
    private let seeImg:UIImageView = {
        let img = UIImageView.init()
        img.image = UIImage.init(named: "icon_yanj")
        return img
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = UIColor.green
        self.contentView.addSubview(bgImg)
        self.contentView.addSubview(titleLab)
        self.contentView.addSubview(contentLab)
        self.contentView.addSubview(starImg)
        self.contentView.addSubview(starLab)
        self.contentView.addSubview(seeLab)
        self.contentView.addSubview(seeImg)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func layout()
    {
        self.bgImg.snp.makeConstraints { (make) in
            make.left.equalTo(self.contentView).offset(11)
            make.right.equalTo(self.contentView).offset(-11)
            make.top.equalTo(self.contentView).offset(20)
            make.height.equalTo(156)
        }
        self.titleLab.snp.makeConstraints { (make) in
            make.top.equalTo(self.bgImg.snp_bottom).offset(19)
            make.left.equalTo(self.bgImg)
            make.right.equalTo(self.bgImg)
            make.height.equalTo(14)
        }
        self.contentLab.snp.makeConstraints { (make) in
            make.top.equalTo(self.titleLab.snp_bottom).offset(5)
            make.left.equalTo(self.titleLab)
            make.height.equalTo(12)
            
        }
        
        self.starLab.snp.makeConstraints { (make) in
            make.right.equalTo(self.bgImg)
            make.width.equalTo(30)
            make.height.equalTo(10)
            make.top.equalTo(self.contentLab)
        }
        
        self.starImg.snp.makeConstraints { (make) in
            make.top.equalTo(self.contentLab)
            make.right.equalTo(self.starLab.snp_left)
            make.height.equalTo(11)
            make.width.equalTo(11)
        }
        
        self.seeLab.snp.makeConstraints { (make) in
            make.right.equalTo(self.starImg.snp_left).offset(-10)
            make.width.equalTo(30)
            make.height.equalTo(10)
            make.top.equalTo(self.contentLab)
        }
        
        self.seeImg.snp.makeConstraints { (make) in
            make.top.equalTo(self.contentLab)
            make.right.equalTo(self.seeLab.snp_left)
            make.height.equalTo(11)
            make.width.equalTo(15)
        }
        
    }
    
    var model: homecaseModel? {
        willSet {
            
        }
    }
    
    
    
}
