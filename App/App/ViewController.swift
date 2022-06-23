//
//  ViewController.swift
//  App
//
//  Created by mac on 23/6/22.
//

import UIKit
import Common
import Product
import Cart

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func helloActBtn(_ sender: Any) {
        helloLabel.text = "Hai \(nameText.text ?? "yourname") \(hello)"
    }
    
    @IBAction func openActBtn(_ sender: Any) {
        let nextVC = ProductViewController(vc: CartViewController())
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

