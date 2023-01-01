  //
  //  RMCharacterViewController.swift
  //  Rick And Morty App
  //
  //  Created by Mark Trance on 12/31/22.
  //

import UIKit

  /// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .systemBackground
    title = "Characters"
    
    let request = RMRequest(endpoint: .character,
                            queryParameters: [URLQueryItem(name: "name", value: "rick"),
                                             URLQueryItem(name: "status", value: "alive")]
    )
    print(request.url)
    
  }
  
  
  
}
