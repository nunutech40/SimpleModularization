//
//  ViewController.swift
//  App
//
//  Created by mac on 23/6/22.
//

import UIKit
import Common

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func helloActBtn(_ sender: Any) {
        helloLabel.text = "Hai \(nameText.text ?? "yourname") \(hello)"
    }
    
}

