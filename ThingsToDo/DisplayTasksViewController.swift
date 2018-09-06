//
//  DisplayTasksViewController.swift
//  ThingsToDo
//
//  Created by Jessica Mallian on 9/5/18.
//  Copyright © 2018 Jessica Mallian. All rights reserved.
//

import UIKit

class DisplayTasksViewController: UITableViewController {
    //temporary
    //var data = TasksStorage.storage
    
    override func viewDidLoad() {
        let task1 = Task(title: "Make an App")
        let task2 = Task(title: "Read for 30 Minutes")
        let task3 = Task(title: "Walk")
        let task4 = Task(title: "Play Alien Isolation")
        let task5 = Task(title: "Prepare Coffee")
        TasksStorage.storage.append(task1)
        TasksStorage.storage.append(task2)
        TasksStorage.storage.append(task3)
        TasksStorage.storage.append(task4)
        TasksStorage.storage.append(task5)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        print("viewWillAppear called")
    }
    
    @objc func addButtonTapped() {
        let viewController: AddTaskViewController
        viewController = storyboard?.instantiateViewController(withIdentifier: "AddTaskVC") as! AddTaskViewController
        //viewController.data = data
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    //MARK: datasource functions
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TasksStorage.storage.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") 
        cell?.textLabel?.text = TasksStorage.storage[indexPath.row].title
        return cell!
    }
    
    //this is not neccessary to be able to delete from a table view
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("delete was pressed")
            TasksStorage.storage.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    //MARK: delegate functions

}


