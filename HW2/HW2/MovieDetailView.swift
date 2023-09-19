//
//  MovieDetailView.swift
//  HW2
//
//  Created by Marisol Rodriguez on 9/11/23.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie

    var body: some View {
        ScrollView {
            RemoteImage(url: movie.backdrop_path)
                .frame(height: 300)
                .aspectRatio(contentMode: .fit)

            Text(movie.title)
                .font(.title)
                .padding()

            Text(movie.overview)
                .font(.body)
                .padding()

            VStack(alignment: .leading) {
                Text("Vote Average: \(String(format: "%.1f", movie.vote_average))")
                Text("Vote Count: \(movie.vote_count)")
                Text("Popularity: \(String(format: "%.1f", movie.popularity))")
            }
            .font(.subheadline)
            .padding()
        }
        .navigationBarTitle(movie.title)
    }
}
