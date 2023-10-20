//
//  ViewController.swift
//  tableViewNotes
//
//  Created by GABRIELA AVILA on 10/18/23.
//
struct Book{
    var author : String
    var title : String
    var pages : Int
    var chapters : Int
}

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    
    
    var numbers = [3, 5, 7, 9, 11, 13]
        //calling default contructor
    var books = [Book]()
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    @IBOutlet weak var TFOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //make sure
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        books.append(Book(author: "Annahlu Raclawski", title: "Figure it out", pages: 12, chapters: 2))
        books.append(Book(author: "Me", title: "animals", pages: 2341, chapters: 34))
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    //populates each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //is an optional unless you put ! at end
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CrazyCell
        
        //cell.textLabel?.text = "\(numbers[indexPath.row])"
        //cell.detailTextLabel?.text = "Hi"
        
        cell.authorOutlet.text = books[indexPath.row].author
        cell.titleOutlet.text = books[indexPath.row].title
        cell.pagesOutlet.text = "\(books[indexPath.row].pages)"
        cell.chaptersOutlet.text = "\(books[indexPath.row].chapters)"
        
        return cell
    }

    @IBAction func addAction(_ sender: UIBarButtonItem) {
       var blah = TFOutlet.text!
        var num = Int(blah)
        
        if let n = num{
            numbers.append(n)
            tableViewOutlet.reloadData()
        }
        
    }
    
    
    

}

