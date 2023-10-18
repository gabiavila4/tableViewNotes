//
//  ViewController.swift
//  tableViewNotes
//
//  Created by GABRIELA AVILA on 10/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    var numbers = [3, 5, 7, 9, 11, 13]
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //make sure
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    //populates each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //is an optional unless you put ! at end
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        
        cell.textLabel?.text = "\(numbers[indexPath.row])"
        cell.detailTextLabel?.text = "Hi"
        return cell
    }

    
    
    

}

