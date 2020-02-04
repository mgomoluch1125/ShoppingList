//
//  ViewController.swift
//  ShoppingList
//
//  Created by Michael Gomoluch on 2/3/20.
//  Copyright © 2020 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var items:[Item] = []
    
    @IBOutlet weak var newItemTextField: UITextField!
    override func viewDidLoad() {
      
        super.viewDidLoad()
        tableView.dataSource = self
        let item1 = Item(name: "Milk")
        let item2 = Item(name: "Eggs")
        
        items = [item1, item2]
        
        
    }
    @IBAction func whenButtonPressed(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = "Hello"
        return cell
    }
}

