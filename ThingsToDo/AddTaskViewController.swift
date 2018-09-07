//
//  AddTaskViewController.swift
//  ThingsToDo
//
//  Created by Jessica Mallian on 9/5/18.
//  Copyright © 2018 Jessica Mallian. All rights reserved.
//

//TODO: placeholder text in textfield that autoclears
//TODO: add UITextField and UISwitch to fill out 3 fields of a tasks
import UIKit
class AddTaskViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var prioritySwitch: UISwitch!
    @IBOutlet weak var descriptionTextView: UITextView!
    //var data: [Task]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleField.delegate = self
        titleField.text = "Enter Title for Task"
    }
    
    @IBAction func addTaskButtonPressed(_ sender: Any) {
        guard let title = titleField.text, title != "" else {
            displayLabel.text = "Please enter a title for your task." //will clear inside textFieldDidBeginEditing
            return
        }
        let newTask = Task(title: title)
        TasksStorage.storage.append(newTask)
        //hide keyboard and clear text as indicators that something happened when button pressed - could go back to list butuser may want to add more than 1 task at a time
        titleField.resignFirstResponder()
        titleField.text = ""
    }
    
    //MARK: UITextFieldDelegate methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
        displayLabel.text = ""
    }
}
