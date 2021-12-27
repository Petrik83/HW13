//
//  SecondTabViewController.swift
//  HW13
//
//  Created by Александр Петрович on 27.12.2021.
//

import UIKit

class SecondTabViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Для Вас"
        navigationController?.navigationBar.prefersLargeTitles = true

        view.backgroundColor = .systemGray6
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
