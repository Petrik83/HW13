//
//  ThirdTabViewController.swift
//  HW13
//
//  Created by Александр Петрович on 27.12.2021.
//

import UIKit

class ThirdTabViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Альбомы"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemGray6
        let rightButtonItem = UIBarButtonItem.init(
              title: "Title",
              style: .done,
              target: self,
              action: Selector(("rightButtonAction:"))
        )

        self.navigationItem.rightBarButtonItem = rightButtonItem
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    @objc func rightButtonAction(sender: UIBarButtonItem) {
        print("ddddd")
    }
}
