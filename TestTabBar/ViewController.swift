//
//  ViewController.swift
//  TestTabBar
//
//  Created by Chuei-Ching Chiou on 23/07/2017.
//  Copyright © 2017 DaBuIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func goToTabVC(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "tabvc") as! TabVC
        show(vc, sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

