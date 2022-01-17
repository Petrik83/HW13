//
//  SetupSections.swift
//  HW13
//
//  Created by Александр Петрович on 08.01.2022.
//

import UIKit
extension ThirdTabViewController {
  
    func setupVerticalViewSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(VerticalSectionConstants.itemSizeWidth),
                                              heightDimension: .fractionalHeight(VerticalSectionConstants.itemSizeHeight))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets.init(top: VerticalSectionConstants.ItemContentInsets.top,
                                                          leading: VerticalSectionConstants.ItemContentInsets.leading,
                                                          bottom: VerticalSectionConstants.ItemContentInsets.bottom,
                                                          trailing: VerticalSectionConstants.ItemContentInsets.trailing)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(VerticalSectionConstants.groupSizeWidth),
                                               heightDimension: .estimated(VerticalSectionConstants.groupSizeHeight))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets.init(top: VerticalSectionConstants.GroupContentInsets.top,
                                                             leading: VerticalSectionConstants.GroupContentInsets.leading,
                                                             bottom: VerticalSectionConstants.GroupContentInsets.bottom,
                                                             trailing: VerticalSectionConstants.GroupContentInsets.trailing)
        let header = createSectionsHeader()
        section.boundarySupplementaryItems = [header]
        
        return section
    }
    
    func setupHorizontalViewSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(HorizontalSectionConstants.itemSizeWidth),
                                              heightDimension: .fractionalHeight(HorizontalSectionConstants.itemSizeHeight))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(HorizontalSectionConstants.groupSizeWidth),
                                               heightDimension: .fractionalWidth(HorizontalSectionConstants.groupSizeHeight))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = NSDirectionalEdgeInsets.init(top: HorizontalSectionConstants.GroupContentInsets.top,
                                                           leading: HorizontalSectionConstants.GroupContentInsets.leading,
                                                           bottom: HorizontalSectionConstants.GroupContentInsets.bottom,
                                                           trailing: HorizontalSectionConstants.GroupContentInsets.trailing)
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets.init(top: HorizontalSectionConstants.SectionContentInsets.top,
                                                             leading: HorizontalSectionConstants.SectionContentInsets.leading,
                                                             bottom: HorizontalSectionConstants.SectionContentInsets.bottom,
                                                             trailing: HorizontalSectionConstants.SectionContentInsets.trailing)
        
        let header = createSectionsHeader()
        section.boundarySupplementaryItems = [header]
        return section
    }
    
    func setupTwoRollHorizontalViewSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(TwoRollHorizontalSectionConstants.itemSizeWidth),
                                              heightDimension: .fractionalHeight(TwoRollHorizontalSectionConstants.itemSizeHeight))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(TwoRollHorizontalSectionConstants.groupSizeWidth),
                                               heightDimension: .fractionalWidth(TwoRollHorizontalSectionConstants.groupSizeHeight))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)
        group.contentInsets = NSDirectionalEdgeInsets.init(top: TwoRollHorizontalSectionConstants.SectionContentInsets.top,
                                                           leading: TwoRollHorizontalSectionConstants.SectionContentInsets.leading,
                                                           bottom: TwoRollHorizontalSectionConstants.SectionContentInsets.bottom,
                                                           trailing: TwoRollHorizontalSectionConstants.SectionContentInsets.trailing)
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets.init(top: TwoRollHorizontalSectionConstants.GroupContentInsets.top,
                                                             leading: TwoRollHorizontalSectionConstants.GroupContentInsets.leading,
                                                             bottom: TwoRollHorizontalSectionConstants.GroupContentInsets.bottom,
                                                             trailing: TwoRollHorizontalSectionConstants.GroupContentInsets.trailing)
        
        let header = createSectionsHeader()
        section.boundarySupplementaryItems = [header]
        return section
    }
    
    func createSectionsHeader() -> NSCollectionLayoutBoundarySupplementaryItem {
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(SectionHeaderConstants.headerSizeWidth),
                                                heightDimension: .estimated(SectionHeaderConstants.headerSizeHeight))
        return NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize,
                                                           elementKind: UICollectionView.elementKindSectionHeader,
                                                           alignment: .top)
    }
}

// MARK: - Constants

enum VerticalSectionConstants {
    static let itemSizeWidth = 1.0
    static let itemSizeHeight = 48.0
    
    enum ItemContentInsets {
        static let top = 0.0
        static let leading = 10.0
        static let bottom = 8.0
        static let trailing = 0.0
    }
    
    static let groupSizeWidth = 1.0
    static let groupSizeHeight = 1.0
    
    enum GroupContentInsets {
        static let top = 30.0
        static let leading = 10.0
        static let bottom = 0.0
        static let trailing = 0.0
    }
}

enum HorizontalSectionConstants {
    static let itemSizeWidth = 0.5
    static let itemSizeHeight = 1.0
  
    static let groupSizeWidth = 1.0
    static let groupSizeHeight = 0.6
    
    enum GroupContentInsets {
        static let top = 0.0
        static let leading = 0.0
        static let bottom = 8.0
        static let trailing = 0.0
    }
    enum SectionContentInsets {
        static let top = 30.0
        static let leading = 10.0
        static let bottom = 10.0
        static let trailing = 0.0
    }
}

enum TwoRollHorizontalSectionConstants {
    static let itemSizeWidth = 1.0
    static let itemSizeHeight = 1.0
  
    static let groupSizeWidth = 0.47
    static let groupSizeHeight = 1.1
    
    enum GroupContentInsets {
        static let top = 0.0
        static let leading = 0.0
        static let bottom = 8.0
        static let trailing = 0.0
    }
    enum SectionContentInsets {
        static let top = 30.0
        static let leading = 10.0
        static let bottom = 10.0
        static let trailing = 0.0
    }
}

enum SectionHeaderConstants {
    static let headerSizeWidth = 1.0
    static let headerSizeHeight = 22.0
}
