//
//  Endpoint.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 08/09/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import Foundation

typealias QueryItems = [String: String]
typealias Headers = [String: String]

protocol Endpoint {
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var queryItems: QueryItems? { get }
    var body: Data { get }
    var header: Headers? { get }
}
