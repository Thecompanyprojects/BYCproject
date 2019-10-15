//
//  homecaseViewModel.swift
//  BycProject
//
//  Created by 王俊钢 on 2019/10/13.
//  Copyright © 2019 wangjungang. All rights reserved.
//

import UIKit
import Foundation
import RxSwift
import RxDataSources


class homecaseViewModel: NSObject {
    
    func getModel() -> Observable<[SectionModel<String, homecaseModel>]> {
        return Observable.create { (observer) -> Disposable in
            let users = [homecaseModel(followersCount: 19_901_990, followingCount: 1990, screenName: "Marco Sun"),
                homecaseModel(followersCount: 19_890_000, followingCount: 1989, screenName: "Taylor Swift"),
                homecaseModel(followersCount: 250_000, followingCount: 25, screenName: "Rihanna"),
                homecaseModel(followersCount: 13_000_000_000, followingCount: 13, screenName: "Jolin Tsai"),
                homecaseModel(followersCount: 25_000_000, followingCount: 25, screenName: "Adele")]
            let section = [SectionModel(model: "", items: users)]
            observer.onNext(section)
            observer.onCompleted()
            return Disposables.create()
        }
    }
}
