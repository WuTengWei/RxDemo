//
//  AuthManager.swift
//  RxDemo
//
//  Created by WTW on 2022/4/1.
//

import UIKit
import KeychainAccess
import ObjectMapper
import RxSwift
import RxCocoa

class AuthManager: NSObject {

    static let shared = AuthManager()
    
    // MARK: - Properties
    fileprivate let tokenKey = "TokenKey"
    fileprivate let keychain = Keychain(service: Configs.App.bundleIdentifier)

    var token: Token? {
        
        get {
            guard let jsonString = keychain[tokenKey] else { return nil }
            return Mapper<Token>().map(JSONString: jsonString)
        }

        set {

            if let token = newValue, let jsonString = token.toJSONString() {
                keychain[tokenKey] = jsonString
            } else {
                keychain[tokenKey] = nil
            }
            
        }
    }
}
