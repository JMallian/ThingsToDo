//
//  AddTaskViewController.swift
//  ThingsToDo
//
//  Created by Jessica Mallian on 9/5/18.
//  Copyright © 2018 Jessica Mallian. All rights reserved.
//
//TODO: implement method to dismiss keyboard when Return is pressed
//TODO: placeholder text in textfield that autoclears
//TODO: add UITextField and UISwitch to fill out 3 fields of a tasks
import UIKit
class AddTaskViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    //var data: [Task]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleField.delegate = self
    }
    
    @IBAction func addTaskButtonPressed(_ sender: Any) {
        guard let title = titleField.text else {
            displayLabel.text = "Please enter a title for your task."
            return
        }
        let newTask = Task(title: title)
        TasksStorage.storage.append(newTask)
        print("storage now has \(TasksStorage.storage.count) items")
    }
    
    //TODO: implement method to dismiss keyboard when Return is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
