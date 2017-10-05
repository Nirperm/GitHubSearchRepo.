//
//  User.swift
//  GitHubSearchRepo
//
//  Created by kurt on 2017/10/06.
//  Copyright © 2017年 lifehack. All rights reserved.
//

import Foundation

struct User: JSONDecodable{
  let id: Int
  let login: String
  
  init(json: Any) throws {
    guard let dictionary = json as? [String: Any] else {
      throw JSONDecoderError.invalidFormat(json: json)
    }
    
    guard let id = dictionary["id"] as? Int else {
      throw JSONDecoderError.missingValue(key: "id", actualValue: dictionary["id"])
    }
    
    guard let login = dictionary["login"] as? String else {
      throw JSONDecoderError.missingValue(key: "login", actualValue: dictionary["login"])
    }
    
    self.id = id
    self.login = login
  }
}