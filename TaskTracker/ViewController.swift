//
//  ViewController.swift
//  TaskTracker
//
//  Created by Manaf A. on 05.06.25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var taskTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskTableView.dataSource = self
        taskTableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskTableViewCell", for: indexPath) as? TaskTableViewCell
        cell?.titleLabel?.text = "Section \(indexPath.section), Row \(indexPath.row + 1)"
        return cell ?? UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    
}
