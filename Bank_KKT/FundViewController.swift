//
//  FundViewController.swift
//  Bank_KKT
//
//  Created by Lia AN on 2022/10/05.
//

import UIKit

class FundViewController: UIViewController, UIWebViewDelegate {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func KKTButton(_ sender: Any) {
        guard let url = URL(string: "https://pf.kakao.com/_Cxixopb/chat"), UIApplication.shared.canOpenURL(url) else { return };  UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    
}
