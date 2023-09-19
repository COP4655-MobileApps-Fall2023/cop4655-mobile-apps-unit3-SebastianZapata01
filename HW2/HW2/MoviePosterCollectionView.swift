//
//  MoviePosterCollectionView.swift
//  HW2
//
//  Created by Marisol Rodriguez on 9/18/23.
//

import SwiftUI

struct MoviePosterCollectionView: View {
    let movies: [Movie] = listMovies
    @State private var selectedMovie: Movie? = nil

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 200))]) {
                    ForEach(movies) { movie in
                        NavigationLink(destination: MovieDetailView(movie: movie)) {
                            RemoteImage(url: movie.poster_path)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(8)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding()
            }
            .navigationBarTitle("Movie Posters")
        }
    }
}
