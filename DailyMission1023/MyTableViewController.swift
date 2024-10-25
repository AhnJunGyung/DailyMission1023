//
//  MyTableViewController.swift
//  DailyMission1023
//
//  Created by t2023-m0072 on 10/25/24.
//

import UIKit

class MyTableViewController: UIViewController {

    @IBOutlet weak var fruitTableView: UITableView!
    
    @IBOutlet weak var fruitTF: UITextField!
    
    @IBOutlet weak var fruitLabel: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    var fruits: [String] = ["딸기", "포도", "망고"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fruitTableView.dataSource = self
        fruitTableView.delegate = self
        
    }
    
    @IBAction func addFruits(_ sender: Any) {
        
        if let fruitsName: String = fruitLabel.text {
            if !fruitsName.isEmpty {
                print(fruitsName)
                fruits.append(fruitsName)
                
                fruitTableView.reloadData()
            }
        }
        
    }
    

}

extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = fruitTableView.dequeueReusableCell(withIdentifier: "fruitTableView", for: indexPath)
        
        cell.textLabel?.text = fruits[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
    
}
