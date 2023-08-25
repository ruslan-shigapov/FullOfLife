//
//  ViewController.swift
//  FullOfLife
//
//  Created by Руслан Шигапов on 24.08.2023.
//

import UIKit

enum Section: String, CaseIterable {
    case wheelOfSpheres
    case dailyTasks
    case calendar
}

class MainViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
    }
}

