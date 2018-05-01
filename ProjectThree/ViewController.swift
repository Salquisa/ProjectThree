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
    var myRestaurantsArray = ["California Pizza Kitchen", "Pieology", "Panda Express", "Applebee's", "Johnny Rockets", "Sushi Bay"]
    
    var restaurantImageData = [String]()
    var restaurantDescriptionData = [String]()
    var restaurantNamesData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.dataSource = self
        
        self.menuTitleOne.title = "Oʻahu Eats"
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey:"restaurantImages") as! [String]
        
        restaurantDescriptionData = dict!.object(forKey:"restaurantDescription") as! [String]
        
        restaurantNamesData = dict!.object(forKey: "restaurantNames") as! [String]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        tableView.dataSource = self
        tableView.delegate = self
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
    
    //add another table view function called, tableView(_:didSelectRowAt:)
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
            
            s1.textPass = restaurantDescriptionData[imageIndex!]
            
            s1.titlePass = restaurantNamesData[imageIndex!]
        }
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "My Restaurants On Oahu"}


}

