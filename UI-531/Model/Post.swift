//
//  Post.swift
//  UI-531
//
//  Created by nyannyan0328 on 2022/04/04.
//

import SwiftUI

struct Post: Identifiable {
    var id = UUID().uuidString
    var postImage : String
    var title : String
    var discription : String
    var starRating : Int
}

var posts : [Post] = [

Post(postImage: "Movie1", title: "Forest and road", discription: "The beautiful Sky and Place ", starRating: 3),
Post(postImage: "Movie2", title: "Night Vision", discription: "Infinity Stars ", starRating: 5),
Post(postImage: "Movie3", title: "Night sea", discription: "Night sea is black out", starRating: 4),
Post(postImage: "Movie4", title: "Gold Fish", discription: "Red Colde Fish is rever", starRating: 3),
Post(postImage: "Movie5", title: "Fire out", discription: "The fire place now Beautiful", starRating: 4),
Post(postImage: "Movie6", title: "Lighthouse", discription: "The night light house Isolated", starRating: 4),
Post(postImage: "Movie7", title: "Black Fire", discription: "Fire is beautifull image", starRating: 5),


]
