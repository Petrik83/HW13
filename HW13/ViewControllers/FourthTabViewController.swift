//
//  FourthTabViewController.swift
//  HW13
//
//  Created by Александр Петрович on 27.12.2021.
//

import UIKit

class FourthTabViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemGray6
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        self.navigationItem.searchController = search
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

extension FourthTabViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text ?? "")
    }
}
