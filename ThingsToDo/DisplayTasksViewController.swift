//
//  DisplayTasksViewController.swift
//  ThingsToDo
//
//  Created by Jessica Mallian on 9/5/18.
//  Copyright © 2018 Jessica Mallian. All rights reserved.
//

import UIKit

class DisplayTasksViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
    }
    
    @objc func addButtonTapped() {
        //go to another ViewController to create a task
    }
}
