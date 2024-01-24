//
//  ConversationsController.swift
//  TwitterFirebase
//
//  Created by Fırat AKBULUT on 5.12.2023.
//

import UIKit

class ConversationsController: UIViewController{
    
    //MARK: - Properties
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Helpers
    
    func configureUI(){
        view.backgroundColor = .white
        
        navigationItem.title = "Messages"
    }
}
