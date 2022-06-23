//
//  ProductViewController.swift
//  Product
//
//  Created by mac on 23/6/22.
//

import UIKit

public class ProductViewController: UIViewController {
    
    var nextVC: UIViewController
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        print("cek Productvc run")
    }
    
    public init(vc: UIViewController) {
        self.nextVC = vc
        super.init(nibName: nil, bundle: nil)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @IBAction func openActBtn(_ sender: Any) {
        self.navigationController?.pushViewController(self.nextVC, animated: true)
    }
}
