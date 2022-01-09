//
//  ThirdTabViewController.swift
//  HW13
//
//  Created by Александр Петрович on 27.12.2021.
//

import UIKit

class ThirdTabViewController: UIViewController, UICollectionViewDelegate {
    
    let data = Section.getData()
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Альбомы"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemGray6
        
        let leftButtonItem = UIBarButtonItem.init(
            image: UIImage(systemName: "plus"),
            style: .done,
            target: self,
            action: #selector(leftButtonAction)
        )
        self.navigationItem.leftBarButtonItem = leftButtonItem
        
        setupCollectionView()
    }
    
    @objc func leftButtonAction(sender: UIBarButtonItem) {
        print("add button pressed")
    }
    
    func setupCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: setupCompositionLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.register(VerticalSectionCell.self, forCellWithReuseIdentifier: VerticalSectionCell.reuseId)
        collectionView.register(HorizontalSectionCell.self, forCellWithReuseIdentifier: HorizontalSectionCell.reuseId)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.systemGray6
        view.addSubview(collectionView)
    }
    
    func setupCompositionLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout  { (sectionIndex, layoutEnvironment) -> NSCollectionLayoutSection? in
            let section = self.data[sectionIndex]
            switch section.type {
            case .oneRollHorizontalView:
                return setupHorizontalViewSection()
            case .twoRollHorizontalView:
                return setupTwoRollHorizontalViewSection()
            default:
                return setupVerticalViewSection()
            }
        }
        return layout
    }
    
}

extension ThirdTabViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[section].options.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch data[indexPath.section].type {
            
        case .oneRollHorizontalView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontalSectionCell.reuseId, for: indexPath) as! HorizontalSectionCell
            cell.icon.image = data[indexPath.section].options[indexPath.row].icon
            cell.title.text = data[indexPath.section].options[indexPath.row].title
            cell.subTitle.text = data[indexPath.section].options[indexPath.row].detailTextLabel
            return cell
        case .twoRollHorizontalView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontalSectionCell.reuseId, for: indexPath) as! HorizontalSectionCell
            cell.icon.image = data[indexPath.section].options[indexPath.row].icon
            cell.title.text = data[indexPath.section].options[indexPath.row].title
            cell.subTitle.text = data[indexPath.section].options[indexPath.row].detailTextLabel
            return cell
        case .verticalView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VerticalSectionCell.reuseId, for: indexPath) as! VerticalSectionCell
            cell.icon.image = data[indexPath.section].options[indexPath.row].icon
            cell.title.text = data[indexPath.section].options[indexPath.row].title
            cell.subTitle.text = data[indexPath.section].options[indexPath.row].detailTextLabel
            return cell
        }
        
    }
}
