  //
  //  RMRequest.swift
  //  Rick And Morty App
  //
  //  Created by Mark Trance on 12/31/22.
  //

import Foundation

  /// Object that represents a single API Call
final class RMRequest {
    // base url
    // Endpoint
    // Path Components
    // Query Parameters
  
    ///API Constants
  private struct Constants {
    static let baseURL = "https://rickandmortyapi.com/api"
  }
  
    /// Desired Endpoint
  private let endpoint: RMEndpoint
  
    /// Path Components for API, if any
  private let pathComponents: [String]
  
    /// Query Parameters for API, if any
  private let queryParameters: [URLQueryItem]
  
    /// Contructed URL for the api request in String format.
  private var urlString: String {
    var string = Constants.baseURL
    string += "/"
    string += endpoint.rawValue
    
    if !pathComponents.isEmpty {
      pathComponents.forEach {
        string += "/\($0)"
      }
    }
    
    if !queryParameters.isEmpty {
      string += "?"
      let arguementString = queryParameters.compactMap {
        guard let value = $0.value else { return nil }
        return "\($0.name)=\(value)"
      }.joined(separator: "&")
      
      string += arguementString
    }
    return string
  }
  
    /// Computed & constructed API URL
  public var url: URL? {
    return URL(string: urlString)
  }
  
    /// Desired HTTP method
  public let httpMethod = "GET"
  
    // MARK: - Public
  
  
    /// Construct request
    /// - Parameters:
    ///   - endpoint: target endpoint
    ///   - pathComponents: collection of path components
    ///   - queryParameters: collection query parameters
  init(endpoint: RMEndpoint,
       pathComponents: [String] = [],
       queryParameters: [URLQueryItem] = [])
  {
    self.endpoint = endpoint
    self.pathComponents = pathComponents
    self.queryParameters = queryParameters
  }
  
    // https://rickandmortyapi.com/api/episode
}


extension RMRequest {
  static let listCharactersRequests = RMRequest(endpoint: .character)
}
