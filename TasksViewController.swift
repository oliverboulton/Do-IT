//
//  TasksViewController.swift
//  Do IT
//
//  Created by Oliver Boulton on 16/03/2021.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var tasks : [Task] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        tasks = makeTask()
        
        tableView.dataSource = self
        tableView.delegate = self
    
    
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
        //this is saying how many cells
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "‼️\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
       
        return cell
    // this is saying whats going in the cells
    
    }
    
    func makeTask() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the Dog"
        task1.important = false
    
        let task2 = Task()
        task2.name = "Buy Cheese"
        task2.important = true
    
        let task3 = Task()
        task3.name = "Mow the lawn"
        task3.important = false
    
        return [task1, task2, task3]
    
    
    }
    
    @IBAction func plusTapped(_ sender: Any) {
       performSegue(withIdentifier: "addSegue", sender: nil)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as!
            CreateTaskViewController
        nextVC.previousVC = self
    }
    
    
}

