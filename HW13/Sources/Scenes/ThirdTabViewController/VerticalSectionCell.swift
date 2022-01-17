//
//  VerticalSectionCell.swift
//  HW13
//
//  Created by Александр Петрович on 08.01.2022.
//

import UIKit

class VerticalSectionCell: UICollectionViewCell {
    
    static var reuseId = "VerticalSectionCell"
    
    let icon = UIImageView()
    let title = UILabel()
    let subTitle = UILabel()
    let accessoryIcon = UIImageView()
    let line = UILabel()
    
    override var isHighlighted: Bool {
            didSet {
                if self.isHighlighted {
                    backgroundColor = UIColor.systemGray3
                } else {
                    backgroundColor = UIColor.systemGray6
                }
            }
        }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewHierarchy()
        setupLayout()
        
        icon.contentMode = .scaleAspectFit
        accessoryIcon.image = UIImage(named: "chevron")?.withTintColor(.systemGray)
        title.textColor = UIColor.systemBlue
        title.font = UIFont.systemFont(ofSize: VerticalSectionCellMetric.titleFontSize)
        subTitle.textColor = UIColor.systemGray
        line.backgroundColor = UIColor.systemGray3
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func viewHierarchy() {
        addSubview(icon)
        addSubview(title)
        addSubview(subTitle)
        addSubview(accessoryIcon)
        addSubview(line)
    }
    
    private func setupLayout() {
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        icon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        icon.widthAnchor.constraint(equalToConstant: VerticalSectionCellMetric.iconWidthAnchorConstant).isActive = true
        icon.heightAnchor.constraint(equalToConstant: VerticalSectionCellMetric.iconHeightAnchorConstant).isActive = true
        
        accessoryIcon.translatesAutoresizingMaskIntoConstraints = false
        accessoryIcon.trailingAnchor.constraint(equalTo: trailingAnchor, constant: VerticalSectionCellMetric.accessoryIconTrailingAnchorConstant).isActive = true
        accessoryIcon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        accessoryIcon.widthAnchor.constraint(equalToConstant: VerticalSectionCellMetric.accessoryIconWidthAnchorConstant).isActive = true
        accessoryIcon.heightAnchor.constraint(equalToConstant: VerticalSectionCellMetric.accessoryIconHeightAnchorConstant).isActive = true

        title.translatesAutoresizingMaskIntoConstraints = false
        title.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: VerticalSectionCellMetric.titleLeadingArchorConstant).isActive = true
        title.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        subTitle.trailingAnchor.constraint(equalTo: accessoryIcon.leadingAnchor, constant: VerticalSectionCellMetric.subTitleTrailingArchorConstant).isActive = true
        subTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        line.translatesAutoresizingMaskIntoConstraints = false
        line.leadingAnchor.constraint(equalTo: icon.trailingAnchor).isActive = true
        line.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        line.topAnchor.constraint(equalTo: bottomAnchor, constant: VerticalSectionCellMetric.lineTopAnchorConstant).isActive = true
        line.heightAnchor.constraint(equalToConstant: VerticalSectionCellMetric.lineHeightAnchorConstant).isActive = true
    }
}

// MARK: - Constants

enum VerticalSectionCellMetric {
    static let iconWidthAnchorConstant = 38.0
    static let iconHeightAnchorConstant = 25.0
    
    static let accessoryIconTrailingAnchorConstant = -20.0
    static let accessoryIconWidthAnchorConstant = 9.0
    static let accessoryIconHeightAnchorConstant = 14.0
    
    static let titleLeadingArchorConstant = 10.0
    static let titleFontSize = 22.0
    
    static let subTitleTrailingArchorConstant = -10.0
    
    static let lineTopAnchorConstant = -1.0
    static let lineHeightAnchorConstant = 1.0
}
