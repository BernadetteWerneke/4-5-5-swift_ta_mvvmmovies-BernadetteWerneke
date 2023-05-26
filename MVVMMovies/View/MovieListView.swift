//
//  MovieListView.swift
//  MVVMMovies
//
//  Created by Bayram Tokses on 14.03.23.
//

import SwiftUI

struct MovieListView: View {
    
    @StateObject var viewModel = MovieViewModel()
    
    
    var body: some View {
       
            NavigationStack{
                List (viewModel.movieList) { movie in
                    NavigationLink(destination: MovieDetailView(movie: movie)) {
                        MovieCard(movie: movie)
                    }
                }
                //  ForEach(viewModel.movieList) { movie in
                //     MovieCard(movie: movie)
                //
                
              //  .navigationDestination(for: Movie.self) { movie in
              //      MovieDetailView(movie: movie)
               // }
            }
        }
    }


struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}


/*
 List {
           ForEach(viewModel.movieData) { movie in
             NavigationLink(value: movie){
               MovieCard(movie: movie)
             }
           }
         }.navigationDestination(for: Movie.self) { movie in
             MovieCardDetails(movie: movie)
 }
 
 Das geht und außerhalb ist noch der NavigationStack
 
 NavigationStack{
         Text("Movies: ")
         List {
           ForEach(viewModel.movieData) { movie in
             NavigationLink(value: movie){
               MovieCard(movie: movie)
             }
           }
         }.navigationDestination(for: Movie.self) { movie in
             MovieCardDetails(movie: movie)
           }
       }
 */
