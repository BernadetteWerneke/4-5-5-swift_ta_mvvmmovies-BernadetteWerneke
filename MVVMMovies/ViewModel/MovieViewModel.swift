//
//  MovieViewModel.swift
//  MVVMMovies
//
//  Created by Bayram Tokses on 14.03.23.
//

import Foundation

class MovieViewModel: ObservableObject {
    @Published var movieList : [Movie] = []
    
    init(){
        fetchPersons()
    }
   
    func fetchPersons(){
        movieList = [
            Movie(title: "avatar", image: "avatar", times: ["11.00", "12.00", "13.00", "14.00"]),
             Movie(title: "creed", image: "creed", times: ["11.30", "12.00", "18.00", "22.00"]),
             Movie(title: "drei???", image: "drei", times: ["12.30", "16.30", "18.00", "21.00"]),
             Movie(title: "Kater", image: "kater", times: ["11.00", "12.00", "13.00", "14.30"]),
             Movie(title: "scream", image: "scream", times: ["16.00", "18.30", "20.00", "22.00"]),
             Movie(title: "Shazam", image: "shazam", times: ["12.00", "16.00", "20.00", "23.00"])
        ]
    }
}

