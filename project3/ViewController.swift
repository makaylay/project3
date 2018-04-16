//
//  ViewController.swift
//  project3
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 Makayla Yanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //Declare array here
    var kakaakoRestaurantsArray = ["Egghead Cafe", "Honolulu Beerworks","Morning Brew", "Moku Kitchen", "ARVO", "Highway Inn"]
    var restaurantImageData = [String]()
    var restaurantDescription = [String]()
    var restaurantName = [String]()
    
    @IBOutlet var firstTabLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.navigationItem.title = "Kaka'ako Eats"
        
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        //access arrays from dictionary from PList
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
        restaurantDescription = dict!.object(forKey: "restaurantDescriptions") as! [String]
        restaurantName = dict!.object(forKey: "restaurantNames") as! [String]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantImageData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellResuseIdentifier")!
        
        let text = kakaakoRestaurantsArray[indexPath.row]
        
        cell.textLabel?.text = text
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
            s1.textPass = restaurantDescription[imageIndex!]
            s1.titlePass = restaurantName[imageIndex!]
        }
    }
    
    


}

