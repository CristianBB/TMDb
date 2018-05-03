//
//  ShowDetail.swift
//  TMDbCore
//
//  Created by Cristian Blazquez Bustos on 3/5/18.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import Foundation

struct ShowDetail: Decodable {
    let backdropPath: String?
    let identifier: Int64
    let overview: String?
    let posterPath: String?
    let name: String
    let credits: Credits?
    let firstAirDate: Date?
    let seasons: Int64?
    
    private enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case identifier = "id"
        case overview
        case posterPath = "poster_path"
        case name
        case credits
        case firstAirDate = "first_air_date"
        case seasons = "number_of_seasons"
    }
}
