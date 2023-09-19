//
//  MovieFetcher.swift
//  HW2
//
//  Created by Marisol Rodriguez on 9/18/23.
//

import Foundation

class MovieFetcher {
    static let shared = MovieFetcher()
    private let apiKey = "3f29b672ce651a7ea386b1bff9e3cc05"

    func fetchNowPlayingMovies(completion: @escaping ([Movie]) -> Void) {
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=3f29b672ce651a7ea386b1bff9e3cc05")!

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                if let movies = try? JSONDecoder().decode([Movie].self, from: data) {
                    completion(movies)
                }
            }
        }.resume()
    }
}
