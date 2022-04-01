//
//  ErrorResponse.swift
//  RxDemo
//
//  Created by WTW on 2022/4/1.
//

import Foundation
import ObjectMapper

struct ErrorResponse: Mappable {
    
    var message: String?
    var errors: [ErrorModel] = []
    var documentationUrl: String?
    
    init(){}
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        
        message <- map["message"]
        errors <- map["errors"]
        documentationUrl <- map["documentation_url"]
    }
    
    func detail() -> String {
        
        return errors.map { $0.message ?? ""}.joined(separator:"\n")
    }
}

struct ErrorModel: Mappable {
    
    var code: String?
    var message: String?
    var field: String?
    var resource: String?
    
    init(){ }
    
    init?(map: Map) { }
    
    mutating func mapping(map: Map) {
        code <- map["code"]
        message <- map["message"]
        field <- map["field"]
        resource <- map["resource"]
    }
}
