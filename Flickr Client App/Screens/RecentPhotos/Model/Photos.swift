//
//  Photos.swift
//  Flickr Client App
//
//  Created by abdulkadir on 5.08.2022.
//

import Foundation

struct Photos: Codable {
    let page: Int?
    let pages: Int?
    let perpage: Int?
    let total: Int
    let photo: [Photo]?
}
