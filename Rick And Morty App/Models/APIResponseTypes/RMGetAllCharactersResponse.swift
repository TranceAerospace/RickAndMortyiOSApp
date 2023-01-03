//
//  RMGetAllCharactersResponse.swift
//  Rick And Morty App
//
//  Created by Mark Trance on 1/3/23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
  
  struct Info: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
  }
  
  let info: Info
  let results: [RMCharacter]
}


