//
//  NetworkProvider.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 18/08/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import Foundation

class NetworkProvider {
    
    private let session: URLSession
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func request<T: Codable>(endpoint: Endpoint, completionHandler: @escaping (Result<T, Error>) -> (Void)) {
        guard let request = makeRequest(from: endpoint) else { return }
        session.dataTask(with: request) { (data, response, error) in
            
        }
    }
    
    func makeRequest(from endpoint: Endpoint) -> URLRequest? {
        
        var urlComponents = URLComponents(string: endpoint.baseURL)
        
        urlComponents?.path = endpoint.path
        urlComponents?.queryItems = endpoint.queryItems?.map({ (key: String, value: String) -> URLQueryItem in
            URLQueryItem(name: key, value: value)
        })
       
        guard let url = urlComponents?.url else { return nil }
        
        var request = URLRequest(url: url)
        request.httpBody = endpoint.body
        request.allHTTPHeaderFields = endpoint.header
        request.httpMethod = endpoint.method.rawValue
        
        
        return request
    }

}
