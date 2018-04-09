//
//  ViewController.swift
//  ProjectThree
//
//  Created by CM Student on 4/2/18.
//  Copyright © 2018 Scott Alquisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var menuTitleOne: UINavigationItem!
    
    @IBOutlet var tableView: UITableView!
    var myRestaurantsArray = ["California Pizza Kitchen", "Pieology", "Chilis", "AppleBee", "Johnny Rockets"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.dataSource = self
        
        self.menuTitleOne.title = "List Of Places To Eat"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1;
    }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return myRestaurantsArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
            let text = myRestaurantsArray[indexPath.row]
            cell.textLabel?.text=text
            return cell
        }
    }




