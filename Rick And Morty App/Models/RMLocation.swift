//
//  RMLocation.swift
//  Rick And Morty App
//
//  Created by Mark Trance on 12/31/22.
//

import Foundation

struct RMLocation: Codable {
  
  let id: Int
  let name: String
  let type: String
  let dimension: String
  let residents: [String]
  let url: String
  let created: String
}
