//
//  JSONDecodable.swift
//  GitHubSearchRepo
//
//  Created by kurt on 2017/10/06.
//  Copyright © 2017年 lifehack. All rights reserved.
//

import Foundation

protocol JSONDecodable {
  init(json: Any) throws
}
