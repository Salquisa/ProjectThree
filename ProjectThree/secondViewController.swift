//
//  secondViewController.swift
//  ProjectThree
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 Scott Alquisa. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet var menuTitleTwo: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
        self.menuTitleTwo.title = "Location of Restaurants"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
