//
//  HomeTabBarViewModel.swift
//  RxDemo
//
//  Created by WTW on 2022/4/1.
//

import UIKit

class HomeTabBarViewModel: ViewModel,ViewModelType {
   
    struct Input {
        
    }
    
    struct Output {
        
    }
    
    func transform(input: Input) -> Output {
        
        return Output()
    }
   
    let authorized: Bool

    init(authorized: Bool,provider: SwiftHubAPI){
        
        self.authorized = authorized
        super.init(provider:provider)
        
    }
    
}
