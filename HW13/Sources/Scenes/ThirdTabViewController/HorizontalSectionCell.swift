//
//  HorizontalSectionCell.swift
//  HW13
//
//  Created by Александр Петрович on 09.01.2022.
//

import UIKit

class HorizontalSectionCell: UICollectionViewCell {
    
    static var reuseId = "HorizontalSectionCell"
    
    override var isHighlighted: Bool {
            didSet {
                if self.isHighlighted {
                    icon1.alpha = 0.5
                } else {
                    icon1.alpha = 0
                }
            }
        }
    
    let icon: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = HorizontalSectionCellMetric.cornerRadius
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let icon1: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = HorizontalSectionCellMetric.cornerRadius
        imageView.backgroundColor = .black
        imageView.alpha = 0
        return imageView
    }()
    
    let title: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 1
        return label
    }()
    
    let subTitle: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.systemGray
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 1
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        viewHierarchy()
        setupLayout()
    }
    
    private func viewHierarchy() {
        addSubview(icon)
        addSubview(icon1)
        addSubview(title)
        addSubview(subTitle)
    }
    
    private func setupLayout() {
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.leftAnchor.constraint(equalTo: leftAnchor, constant: HorizontalSectionCellMetric.iconLeftAnchorConstant).isActive = true
        icon.rightAnchor.constraint(equalTo: rightAnchor, constant: HorizontalSectionCellMetric.iconRightAnchorConstant).isActive = true
        icon.topAnchor.constraint(equalTo: topAnchor, constant: HorizontalSectionCellMetric.iconTopAnchorConstant).isActive = true
        
        icon1.translatesAutoresizingMaskIntoConstraints = false
        icon1.topAnchor.constraint(equalTo: icon.topAnchor).isActive = true
        icon1.bottomAnchor.constraint(equalTo: icon.bottomAnchor).isActive = true
        icon1.leadingAnchor.constraint(equalTo: icon.leadingAnchor).isActive = true
        icon1.trailingAnchor.constraint(equalTo: icon.trailingAnchor).isActive = true
                   
        title.translatesAutoresizingMaskIntoConstraints = false
        title.leftAnchor.constraint(equalTo: leftAnchor, constant: HorizontalSectionCellMetric.titleLeftAnchorConstant).isActive = true
        title.rightAnchor.constraint(equalTo: rightAnchor, constant: HorizontalSectionCellMetric.titleRightAnchorConstant).isActive = true
        title.topAnchor.constraint(equalTo: icon.bottomAnchor, constant: HorizontalSectionCellMetric.titleTopAnchorConstant).isActive = true
        title.heightAnchor.constraint(equalToConstant: (HorizontalSectionCellMetric.titleHeightArchorConstant)).isActive = true
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        subTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: HorizontalSectionCellMetric.subTitleLeftAnchorConstant).isActive = true
        subTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: HorizontalSectionCellMetric.subTitleRightAnchorConstant).isActive = true
        subTitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: HorizontalSectionCellMetric.subTitleTopAnchorConstant).isActive = true
        subTitle.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        subTitle.heightAnchor.constraint(equalToConstant: (HorizontalSectionCellMetric.subTitleHeightArchorConstant)).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Constants

enum HorizontalSectionCellMetric {
    static let cornerRadius = 8.0
    
    static let iconLeftAnchorConstant = 10.0
    static let iconRightAnchorConstant = -10.0
    static let iconTopAnchorConstant = 10.0
    
    static let titleLeftAnchorConstant = 10.0
    static let titleRightAnchorConstant = -10.0
    static let titleTopAnchorConstant = 5.0
    static let titleHeightArchorConstant = 18.0
    
    static let subTitleLeftAnchorConstant = 10.0
    static let subTitleRightAnchorConstant = -10.0
    static let subTitleTopAnchorConstant = 5.0
    static let subTitleHeightArchorConstant = 18.0
}
