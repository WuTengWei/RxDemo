//
//  Navigator.swift
//  RxDemo
//
//  Created by WTW on 2022/4/1.
//

import UIKit

protocol Navigatable {
    var navigator: Navigator! { get set}
}

class Navigator: NSObject {

    static var `defalut` = Navigator()
    
    enum Scene {
        
        case tabs(viewModel:HomeTabBarViewModel)
    }
    
    enum Transition {
        case root(in: UIWindow)
    }
    
    func get(segue: Scene) -> UIViewController? {
        
        switch segue {
        case .tabs(let viewModel):
//            let rootVC = home
            break
        }
        
    }
}
