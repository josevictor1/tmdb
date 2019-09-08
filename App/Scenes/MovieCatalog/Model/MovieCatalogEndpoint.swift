//
//  MovieCatalogEndpoint.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 07/09/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import Foundation

struct MovieCatalogEndpoint: Endpoint {

    var body: Data
    
    var baseURL: String {
        return "https://api.themoviedb.org"
    }
    
    var path: String {
        return "/3/movie/upcoming"
    }
    
    var headers: Headers? {
        return nil
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var queryItems: QueryItems? {
        return ["api_key" : "5a94eebd6b43f083c50ee82c524dcee1"]
    }
    
    var header: Headers? {
        return nil
    }
    
}
