//
//  FirstTabViewController.swift
//  HW13
//
//  Created by Александр Петрович on 27.12.2021.
//

import UIKit

class FirstTabViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Медиатека"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemGray6
    }
}
