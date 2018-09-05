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
    var data = [Task]()
    var task1 = Task(title: "Make an App", description: "just work on a simple app to get better at making apps", priority: .high)
    var task2 = Task(title: "Read for 30 Minutes", description: "pretty self-explanatory", priority: .normal)
    var task3 = Task(title: "Walk", description: "gotta get a nice walk in everyday", priority: .normal)
    var task4 = Task(title: "Play Alien Isolation", description: "try not to die!", priority: .normal)
    var task5 = Task(title: "Prepare Coffee", description: "gotta make my ice coffee to enjoy at work tomorrow", priority: .normal)
    
    override func viewDidLoad() {
        //temporary
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
        <#code#>
    }
}
