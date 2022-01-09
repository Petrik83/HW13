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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewHierarchy()
        setupLayout()
        
        icon.clipsToBounds = true
        icon.contentMode = .center
        accessoryIcon.image = UIImage(named: "chevron")?.withTintColor(.systemGray)
        title.textColor = UIColor.systemBlue
        title.font = UIFont.systemFont(ofSize: 22)
        subTitle.textColor = UIColor.systemGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func viewHierarchy() {
        addSubview(icon)
        addSubview(title)
        addSubview(subTitle)
        addSubview(accessoryIcon)
    }
    
    private func setupLayout() {
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        icon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        icon.widthAnchor.constraint(equalToConstant: 48).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        accessoryIcon.translatesAutoresizingMaskIntoConstraints = false
        accessoryIcon.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        accessoryIcon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        accessoryIcon.widthAnchor.constraint(equalToConstant: 9).isActive = true
        accessoryIcon.heightAnchor.constraint(equalToConstant: 14).isActive = true

        title.translatesAutoresizingMaskIntoConstraints = false
        title.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 10).isActive = true
        title.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        subTitle.trailingAnchor.constraint(equalTo: accessoryIcon.leadingAnchor, constant: -10).isActive = true
        subTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
