//
//  CreateTaskViewController.swift
//  Do IT
//
//  Created by Oliver Boulton on 16/03/2021.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   

    @IBAction func addTapped(_ sender: Any) {
        //Create a tasl from the outlet information
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        
        
        //Add new task to array in prebous viewController
        
        previousVC.tasks.append(task)
    }
}
