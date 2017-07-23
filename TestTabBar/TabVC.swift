//
//  TabVC.swift
//  TestTabBar
//
//  Created by Chuei-Ching Chiou on 23/07/2017.
//  Copyright © 2017 DaBuIN. All rights reserved.
//

import UIKit

class TabVC: UIViewController {

    var searchVC: UIViewController!
    var downloadsVC: UIViewController!
    var mapVC:UIViewController!
    var contactsVC: UIViewController!
    
    var selectedIndex:Int = 2
    var viewControllers: [UIViewController]!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var tabBtns:[UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        searchVC = storyboard.instantiateViewController(withIdentifier: "searchVC")
        downloadsVC = storyboard.instantiateViewController(withIdentifier: "downloadsVC")
        contactsVC = storyboard.instantiateViewController(withIdentifier: "contactsVC")
        mapVC = storyboard.instantiateViewController(withIdentifier: "mapVC")
        viewControllers = [searchVC, downloadsVC, mapVC, contactsVC]
        
        
        tabBtns[selectedIndex].isSelected = true
        didPressTab(tabBtns[selectedIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func didPressTab(_ sender: UIButton) {
        
        selectedIndex = sender.tag
        
        let previousIndex = selectedIndex
        tabBtns[previousIndex].isSelected = false

        let previousVC = viewControllers[previousIndex]
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.isSelected = true
        
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
        
    }

 

}
