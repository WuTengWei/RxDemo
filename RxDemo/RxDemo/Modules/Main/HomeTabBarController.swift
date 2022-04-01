//
//  HomeTabBarController.swift
//  RxDemo
//
//  Created by WTW on 2022/4/1.
//

import UIKit
import RAMAnimatedTabBarController
import RxSwift
import RxCocoa
import Localize_Swift
import NSObject_Rx

enum HomeTabBarItem: Int {
    case search,news,notifications,settings,login
    
//    private func controller(with viewModel: ViewModel,navigator: Navigator) -> UIViewController{
//        switch self {
//        case .search:
//            break
//            
//        default:
//            break
//
//        }
//    }
}

class HomeTabBarController: RAMAnimatedTabBarController,Navigatable {
    
    var viewModel: HomeTabBarViewModel?
    var navigator: Navigator!
    
    init(viewModel: ViewModel?,navigator: Navigator){
        
        self.viewModel = viewModel as? HomeTabBarViewModel
        self.navigator = navigator
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        makeUI()
    }
    
    func makeUI() {
        
        NotificationCenter.default.rx.notification(NSNotification.Name(LCLLanguageChangeNotification)).subscribe { [weak self] (event) in
            
            self?.animatedItems.forEach({ item in
//                item.title = hometa
            })
            
        }.disposed(by: rx.disposeBag)

        
    }

}
