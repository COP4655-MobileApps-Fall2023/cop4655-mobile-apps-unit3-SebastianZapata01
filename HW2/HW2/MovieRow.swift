//
//  MovieRow.swift
//  HW2
//
//  Created by Marisol Rodriguez on 9/11/23.
//

import SwiftUI

struct MovieRow: View {
    let movie: Movie

    var body: some View {
        HStack {
            RemoteImage(url: movie.poster_path)
                .frame(width: 80, height: 120)
                .cornerRadius(8)

            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.headline)
                Text(movie.overview.split(separator: "\n").prefix(3).joined(separator: "\n"))
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(3)
                    .truncationMode(.tail)
            }
        }
    }
}
