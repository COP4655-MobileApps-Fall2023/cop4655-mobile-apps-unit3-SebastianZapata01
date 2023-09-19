//
//  ContentView.swift
//  HW2
//
//  Created by Marisol Rodriguez on 9/11/23.
//

import SwiftUI

struct ContentView: View {
    let movies: [Movie] = listMovies // Use listMovies as the data source

    var body: some View {
        NavigationView {
            List(movies) { movie in
                NavigationLink(destination: MovieDetailView(movie: movie)) {
                    MovieRow(movie: movie)
                }
            }
            .navigationTitle("Now Playing Movies")
        }
    }
}
