//
//  MoviePageAPIResponse.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 07/09/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import Foundation

struct MoviePageResponse: Decodable {
    let page: Int
    let results: [MovieResponse]
    let dates: Date
    let totalPages: Int
    let totalResults: Int
}

struct Date: Decodable {
    let maximum: String
    let minimum: String
}
