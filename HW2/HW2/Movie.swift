//
//  Movie.swift
//  HW2
//
//  Created by Marisol Rodriguez on 9/11/23.
//

import SwiftUI

struct Movie: Identifiable, Codable {
    let id = UUID()
    let title: String
    let poster_path: URL
    let overview: String
    let backdrop_path: URL
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
}
