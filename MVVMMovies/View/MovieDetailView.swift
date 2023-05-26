//
//  MovieDetailView.swift
//  MVVMMovies
//
//  Created by Bernadette Werneke on 26.05.23.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    var body: some View {
        VStack{
            Image(movie.image)
                .resizable()
                .frame(width: 180, height: 220)
                .scaledToFit()
            Text(movie.title)
                .font(.headline)
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie.sharedMovie)
    }
}
