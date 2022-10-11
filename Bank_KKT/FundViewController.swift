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
        self.navigationItem.setHidesBackButton(true, animated: true)
    }

    @IBAction func KKTButton(_ sender: Any) {
        guard let url = URL(string: "http://pf.kakao.com/_Cxixopb/chat"), UIApplication.shared.canOpenURL(url) else { return };  UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    
}
