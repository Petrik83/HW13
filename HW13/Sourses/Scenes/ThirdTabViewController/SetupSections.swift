//
//  SetupSections.swift
//  HW13
//
//  Created by Александр Петрович on 08.01.2022.
//

import UIKit

func setupVerticalViewSection() -> NSCollectionLayoutSection {
    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                          heightDimension: .fractionalHeight(48))
    let item = NSCollectionLayoutItem(layoutSize: itemSize)
    item.contentInsets = NSDirectionalEdgeInsets.init(top: 0, leading: 20, bottom: 8, trailing: 20)
    
    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                           heightDimension: .estimated(1))
    let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
    let section = NSCollectionLayoutSection(group: group)
    section.contentInsets = NSDirectionalEdgeInsets.init(top: 24, leading: 0, bottom: 0, trailing: 0)
    return section
}

func setupHorizontalViewSection() -> NSCollectionLayoutSection {
    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                          heightDimension: .fractionalHeight(1))
    let item = NSCollectionLayoutItem(layoutSize: itemSize)
    
    
    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                           heightDimension: .fractionalWidth(0.6))
    let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
    let section = NSCollectionLayoutSection(group: group)
    section.orthogonalScrollingBehavior = .continuous
    section.contentInsets = NSDirectionalEdgeInsets.init(top: 24, leading: 0, bottom: 0, trailing: 0)
    return section
}

func setupTwoRollHorizontalViewSection() -> NSCollectionLayoutSection {
    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                          heightDimension: .fractionalHeight(1))
    let item = NSCollectionLayoutItem(layoutSize: itemSize)
    
    
    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.48),
                                           heightDimension: .fractionalWidth(1.1))
    let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)
    let section = NSCollectionLayoutSection(group: group)
    
    section.orthogonalScrollingBehavior = .continuous
    section.contentInsets = NSDirectionalEdgeInsets.init(top: 24, leading: 0, bottom: 0, trailing: 0)
    return section
}
