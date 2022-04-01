//
//  TableViewController.swift
//  RxDemo
//
//  Created by WTW on 2022/4/1.
//

import UIKit
import KafkaRefresh
import RxSwift
import RxCocoa
import Then
import DZNEmptyDataSet

class TableViewController: UIViewController,UIScrollViewDelegate{

    let headerRefreshTrigger = PublishSubject<Void>()
    let footerRefreshTrigger = PublishSubject<Void>()
    
    let isHeaderLoading = BehaviorRelay(value: false)
    let isFooterLoading = BehaviorRelay(value: false)
    
    lazy var tableView = UITableView(frame: CGRect(), style: .plain).then {
//        $0.emptyDataSetSource = self
//        $0.emptyDataSetDelegate = self
        $0.rx.setDelegate(self).disposed(by: rx.disposeBag)
    }
    
    var clearsSelectionOnViewWillAppear = true
    
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        
        if clearsSelectionOnViewWillAppear == true {
//            deselectSelectedRow()
        }
    }
    
    func makeUI(){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


extension TableViewController: UITableViewDelegate {
    
}
