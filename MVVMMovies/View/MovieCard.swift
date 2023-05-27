//
//  MovieCard.swift
//  MVVMMovies
//
//  Created by Bayram Tokses on 14.03.23.
//

import SwiftUI

struct MovieCard: View {
    var movie: Movie
   
    
    var body: some View {
        
        NavigationStack{
                HStack{
                    Image(movie.image)
                    .resizable()
                    .frame(width: 120, height: 200)
                    VStack{
                        Text(movie.title)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.blue)
                            .padding()
                        VStack{
                            ForEach(0..<movie.times.count){
                                Text(movie.times[$0])
                            }
                        }
                    }
            }
        }
    }
}
        

struct MovieCard_Previews: PreviewProvider {
    static var previews: some View {
        MovieCard(movie: Movie.sharedMovie)
    }
}
