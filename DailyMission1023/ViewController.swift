//
//  ViewController.swift
//  DailyMission1023
//
//  Created by t2023-m0072 on 10/24/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    
    var names: [String] = ["1", "2", "3", "4", "5"]
    
    @IBOutlet weak var textBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.backgroundColor = .blue
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    @IBOutlet weak var MyLabel: UILabel!

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*print("Selected item: \(names[indexPath.row])")
         */
        MyLabel.text = names[indexPath.row]
    }
  
    
}

