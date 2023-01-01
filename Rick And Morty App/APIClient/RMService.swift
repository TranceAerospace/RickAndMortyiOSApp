  //
  //  RMService.swift
  //  Rick And Morty App
  //
  //  Created by Mark Trance on 12/31/22.
  //

import Foundation

  /// Primary API service object to get Rick and Morty Data
final class RMService {
    /// Shared singleton instance
  static let shared = RMService()
  
    /// Privitized Constructor
  private init() {}
  
  
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///     - request: Request instance
    ///     - type: The type of object we expect to get back
    ///     - completion: Callback with data or error
  public func execute<T: Codable>(
    _ request: RMRequest,
    expecting type: T.Type,
    completion: @escaping (Result<String, Error>) -> Void) {
      
    }
}
