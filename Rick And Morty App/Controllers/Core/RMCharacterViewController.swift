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
    
    
    RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
      
      switch result {
        case .success(let model):
          print("Total: "+String(model.info.count))
          print("Results: "+String(model.results.count))
        case .failure(let error):
          print(String(describing: error))
      }
    }
  }
  
  
  
}
