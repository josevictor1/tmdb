//
//  MovieAPIResponse.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 22/08/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import Foundation

struct MovieResponse: Decodable {
    let posterPath: String?
    let adult: Bool
    let overview: String
    let releaseDate: String
    let genreIDs: [Int]
    let id: Int
    let originalTitle: String
    let originalLanguage: String
    let title: String
    let backdropPath: String?
    let popularity: Int
    let voteCount: Int
    let video: Bool
    let voteAverage: Int
    
    enum CodingKeys: String, CodingKey {
        case posterPath = "poster_path"
        case adult
        case overview
        case releaseDate = "release_date"
        case genreIDs = "genre_ids"
        case id
        case originalTitle = "original_title"
        case originalLanguage = "original_language"
        case title
        case backdropPath = "backdrop_path"
        case popularity
        case voteCount = "vote_count"
        case video
        case voteAverage = "vote_average"
    }
}
