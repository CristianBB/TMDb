//
//  DetailHeader+ShowDetail.swift
//  TMDbCore
//
//  Created by Cristian Blazquez Bustos on 3/5/18.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import Foundation

extension DetailHeader {
    init(show: ShowDetail) {
        title = show.name
        posterPath = show.posterPath
        backdropPath = show.backdropPath
        
        let dfmt = DateFormatter()
        dfmt.dateFormat = "yyyy-MM-dd"
        
        let airDate = "First Air Date: \(dfmt.string(from: show.firstAirDate!))"
        let seasons = "Seasons: \(show.seasons ?? 0)"
        
        metadata = [airDate, seasons].compactMap { $0 }.joined(separator: "\n")
        
    }
}
