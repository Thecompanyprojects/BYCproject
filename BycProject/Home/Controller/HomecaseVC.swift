//
//  HomecaseVC.swift
//  BycProject
//
//  Created by 王俊钢 on 2019/10/13.
//  Copyright © 2019 wangjungang. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import RxDataSources


class HomecaseVC: BaseViewController,UITableViewDelegate{
    var tableView: UITableView = UITableView(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT-kNavigationBarHeight-kTabBarHeight-177), style: .plain)
    
    let viewModel = homecaseViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = "案例"
        self.view.backgroundColor = UIColor.white
        // 创建表格
        tableView = UITableView(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT-kNavigationBarHeight-kTabBarHeight-177), style: .plain)
        // 注册单元格
        tableView.register(homecaseCell.self, forCellReuseIdentifier: "cellID")
        tableView.tableFooterView = UIView.init()
        view.addSubview(tableView)
        // 设置代理
        tableView.rx.setDelegate(self).disposed(by: disposeBag)
      
        // 初始化数据
        let items = Observable.just([
           SectionModel(model: "",
                        items: ["UILabel的用法",
                                "UIButton的用法",
                                "UITextField的用法"])
           ])

        // 创建数据源
        let dataSource = RxTableViewSectionedReloadDataSource<SectionModel<String, String>>(configureCell: {
            (dataSource, tableView, indexPath, element) -> homecaseCell in
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellID")!
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell as! homecaseCell
        })

        // 数据绑定
        items.bind(to: tableView.rx.items(dataSource: dataSource)).disposed(by: disposeBag)
        // 获取选中项的索引
        tableView.rx.itemSelected.subscribe(onNext: { indexPath in
            print("选中项的indexPath为: \(indexPath.row)")
        }).disposed(by: disposeBag)
   
  
    }
    
    
    
    //MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }

    
}
