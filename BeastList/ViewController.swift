//
//  ViewController.swift
//  BeastList
//
//  Created by Maria Stezhko on 3/12/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tasks = ["Exercise for 30 minutes", "Wireframe for some project", "Do laundry"]
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var taskTextField: UITextField!
    
    @IBAction func beastButtonPressed(_ sender: UIButton) {
    
        if let data = taskTextField.text {
                tasks.append(data)
        }
        tableView.reloadData()
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return an integer that indicates how many rows (cells) to draw
        return tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        // set text label to the model that is corresponding to the row in array
        cell.textLabel?.text = tasks[indexPath.row]
        // return cell so that Table View knows what to render in each row
        return cell
    }
}

