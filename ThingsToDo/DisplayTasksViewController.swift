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
    var data = TasksStorage.storage
    
    override func viewDidLoad() {
        let task1 = Task(title: "Make an App")
        let task2 = Task(title: "Read for 30 Minutes")
        let task3 = Task(title: "Walk")
        let task4 = Task(title: "Play Alien Isolation")
        let task5 = Task(title: "Prepare Coffee")
        data.append(task1)
        data.append(task2)
        data.append(task3)
        data.append(task4)
        data.append(task5)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
    }
    
    @objc func addButtonTapped() {
        //go to another ViewController to create a task
    }
    
    //MARK: datasource functions
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") 
        cell?.textLabel?.text = data[indexPath.row].title
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("delete was pressed")
            data.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    //MARK: delegate functions

}


