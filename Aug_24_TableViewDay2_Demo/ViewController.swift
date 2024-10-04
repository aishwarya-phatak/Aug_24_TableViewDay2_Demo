//
//  ViewController.swift
//  Aug_24_TableViewDay2_Demo
//
//  Created by Vishal Jagtap on 03/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var studentsTableView: UITableView!
    var students = ["Suhaan","Aniket","Pallavi","Megha","Deepali"]
    var rollNumbers = [12,13,14,15,16]
    var reuseIdentifierForCell = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentsTableView.delegate = self
        studentsTableView.dataSource = self
    }
}

//MARK : Conforming UITableViewDataSource Protocol with TableView
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.studentsTableView.dequeueReusableCell(withIdentifier: reuseIdentifierForCell,
                                                              for: indexPath)
        cell.textLabel?.text = String(rollNumbers[indexPath.row])
        cell.detailTextLabel?.text = students[indexPath.row]
        return cell
    }
}

//MARK : Conforming UITableViewDelegate Protocol with TableView
extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50.0
    }
}
