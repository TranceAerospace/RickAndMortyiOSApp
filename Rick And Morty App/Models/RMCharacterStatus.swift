//
//  RMCharacterStatus.swift
//  Rick And Morty App
//
//  Created by Mark Trance on 12/31/22.
//

import Foundation

enum RMCharacterStatus: String, Codable {
  case alive = "Alive"
  case dead = "Dead"
  case `unknown` = "unknown"
}
