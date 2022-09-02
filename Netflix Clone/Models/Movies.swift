//
//  Movies.swift
//  Netflix Clone
//
//  Created by Swantan Barua on 03/09/22.
//

import Foundation

struct TrendingMoviesResponse: Codable{
    let results: [Movie]
}

struct Movie: Codable{
    let id: Int
    let media: String?
    let originalName: String?
    let originalTitle: String?
    let posterPath: String?
    let overview: String?
    let voteCount: Int
    let releaseDate: String?
    let voteAverage: Double?
}
