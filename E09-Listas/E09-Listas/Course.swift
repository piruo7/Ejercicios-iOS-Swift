//
//  Course.swift
//  E09-Listas
//
//  Created by Christian Ramirez on 17/6/24.
//

import Foundation

struct Course: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var author: String
    var rating: Int
    var description: String
}
