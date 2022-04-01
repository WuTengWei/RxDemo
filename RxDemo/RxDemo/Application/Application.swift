//
//  Application.swift
//  RxDemo
//
//  Created by WTW on 2022/4/1.
//

import UIKit

class Application: NSObject {

    static let shared = Application()
    
    var window: UIWindow?
    
    var provider: SwiftHubAPI?
    let authManager: AuthManager
    let navigator: Navigator
    
    private override init() {
        navigator = Navigator.defalut
        authManager = AuthManager.shared
        super.init()
    
        updateProvider()
    }
    
    private func updateProvider() {
        
    }
    
    func presentInitialScreen(in window: UIWindow?){
        
        guard let window = window,
              let provider = provider else { return }

        self.window = window
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
            
            let authorized = self?.authManager.token?.isValid ?? false
            
            let viewModel = HomeTabBarViewModel(authorized: authorized, provider: provider)
            
//            self.navigator.
        }
    }
    
}
