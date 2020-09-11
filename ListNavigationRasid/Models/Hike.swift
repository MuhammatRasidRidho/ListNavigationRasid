//
//  Hike.swift
//  ListNavigationRasid
//
//  Created by Muhammat Rasid Ridho on 11/09/20.
//  Copyright © 2020 Muhammat Rasid Ridho. All rights reserved.
//

import Foundation

struct Hike {
    let name: String
    let imageURL : String
    let miles: Double
}


extension Hike {
    static func all() -> [Hike] {
        return [
        Hike(name: "Gunung Merapi", imageURL: "ras", miles: 7),
        Hike(name: "Gunung Bromo", imageURL: "bro", miles: 9),
        Hike(name: "Gunung Merbabu", imageURL: "mer", miles: 7.5)
        ]
    }
}
