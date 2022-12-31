//
//  RMEndPoint.swift
//  Rick And Morty App
//
//  Created by Mark Trance on 12/31/22.
//

import Foundation

    /// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    
    ///Endpoint to get character info
    case character
    ///Endpoint to get location info
    case location
    ///Endpoint to get episode info
    case episode
}
