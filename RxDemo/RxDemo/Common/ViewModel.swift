//
//  ViewModel.swift
//  RxDemo
//
//  Created by WTW on 2022/4/1.
//

import UIKit
import Alamofire

protocol ViewModelType {
    
    associatedtype Input
    associatedtype Output

    func transform(input: Input) -> Output
}

class ViewModel: NSObject {

    
    let provider: SwiftHubAPI
    
    init(provider: SwiftHubAPI){
        self.provider = provider
        super.init()
    }
    
    deinit {
        logDebug("\(type(of: self)): Deinited")
        logResourcesCount()
    }
    
}
