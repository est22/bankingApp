//
//  ViewController.swift
//  Bank_KKT
//
//  Created by Lia AN on 2022/09/14.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnTapped(_ sender: Any) {
        let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
        self.navigationController?.pushViewController(storyboard, animated: true)
    }
    
    
}

