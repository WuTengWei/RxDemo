//
//  ResetApi.swift
//  RxDemo
//
//  Created by WTW on 2022/4/1.
//

import UIKit
import Alamofire

enum ApiError: Error {
    
    case serverError(response: ErrorResponse)
    
    var title: String {
        switch self {
        case .serverError(let response):
            return response.message ?? ""
        }
    }
    
    var description: String {
        switch self {
        case .serverError(let response):
            return response.detail()
        }
    }
}

class RestApi: SwiftHubAPI {

}

extension RestApi {
    
}
