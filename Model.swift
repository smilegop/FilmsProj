//
//  File.swift
//  FilmsProj
//
//  Created by smilegop on 13.12.2021.
//

import Foundation

struct Model: Decodable {
  let genres : [Album]
    
}

struct Album: Decodable {
    let id: Int
    let name: String
}




