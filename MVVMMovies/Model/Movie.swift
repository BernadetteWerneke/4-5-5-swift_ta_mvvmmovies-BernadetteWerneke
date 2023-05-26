//
//  File.swift
//  MVVMMovies
//
//  Created by Bayram Tokses on 14.03.23.
//

import Foundation


struct Movie: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var image: String
    var times: [String]

    static var sharedMovie = Movie(title: "drei???", image: "drei", times: ["10.00", "12.00", "14.30", "16.00"])
}
