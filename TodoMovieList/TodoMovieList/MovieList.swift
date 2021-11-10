//
//  MovieList.swift
//  TodoMovieList
//
//  Created by Prathyusha on 2021-11-09.
//

import Foundation

class MovieList{
    
    var movieList = [Movies]()
    init(){
        let initialMovieList = ["Eternals", "Dune", "No Time to Die", "Last night in Soho", "Ron's done wrong", "Halloween kills", "Venom", "Antlers", "The Addams Family 2"]
        for eachInitialMovie in initialMovieList{
            let movie = Movies(movieTitle: eachInitialMovie)
            movieList.append(movie)
        }
    }
    
    func deleteRow(index: Int){
        movieList.remove(at: index)
    }
    
    func moveRow(from: Int, to: Int){
        movieList.insert(movieList[from], at: to)
        movieList.remove(at: from)
    }
    
    func addRow(movieTitle: String){
        let todoMovie = Movies(movieTitle: movieTitle)
        movieList.insert(todoMovie, at: 0)
    }
}
