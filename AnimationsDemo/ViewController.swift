//
//  ViewController.swift
//  AnimationsDemo
//
//  Created by Hesham Abd-Elmegid on 6/16/16.
//  Copyright © 2016 CareerFoundy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - animate text when the app has started
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1) {
            self.nameTextField.alpha = 1
        }
    }
    
    @IBAction func greetButtonTapped(_ sender: AnyObject) {
        if let name = nameTextField.text , !name.isEmpty {
            let greeting = "Hello " + name
            let alertController = UIAlertController(title: nil, message: greeting, preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
    }
}
