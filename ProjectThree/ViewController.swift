//
//  ViewController.swift
//  ProjectThree
//
//  Created by CM Student on 4/2/18.
//  Copyright © 2018 Scott Alquisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var menuTitleOne: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.menuTitleOne.title = "List Of Places To Eat"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

