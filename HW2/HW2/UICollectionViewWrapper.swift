//
//  UICollectionViewWrapper.swift
//  HW2
//
//  Created by Marisol Rodriguez on 9/18/23.
//

import SwiftUI

struct UICollectionViewWrapper: UIViewRepresentable {
    var movies: [Movie] // Replace with your data model
    let onMovieSelected: (Movie) -> Void // Closure to handle movie selection

    func makeUIView(context: Context) -> UICollectionView {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.backgroundColor = .clear
        collectionView.register(MovieCell.self, forCellWithReuseIdentifier: "MovieCell")
        collectionView.dataSource = context.coordinator
        collectionView.delegate = context.coordinator
        return collectionView
    }

    func updateUIView(_ uiView: UICollectionView, context: Context) {
        // Update the UICollectionView if needed
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, UICollectionViewDataSource, UICollectionViewDelegate {
        var parent: UICollectionViewWrapper

        init(_ parent: UICollectionViewWrapper) {
            self.parent = parent
        }

        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return parent.movies.count
        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCell
            let movie = parent.movies[indexPath.item]
            cell.configure(with: movie)
            return cell
        }

        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let selectedMovie = parent.movies[indexPath.item]
            parent.onMovieSelected(selectedMovie)
        }
    }
}
