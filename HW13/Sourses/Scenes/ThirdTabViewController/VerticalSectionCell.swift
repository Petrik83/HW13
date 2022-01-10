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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewHierarchy()
        setupLayout()
        
        icon.contentMode = .scaleAspectFit
        accessoryIcon.image = UIImage(named: "chevron")?.withTintColor(.systemGray)
        title.textColor = UIColor.systemBlue
        title.font = UIFont.systemFont(ofSize: 22)
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
        icon.widthAnchor.constraint(equalToConstant: 38).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        accessoryIcon.translatesAutoresizingMaskIntoConstraints = false
        accessoryIcon.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        accessoryIcon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        accessoryIcon.widthAnchor.constraint(equalToConstant: 9).isActive = true
        accessoryIcon.heightAnchor.constraint(equalToConstant: 14).isActive = true

        title.translatesAutoresizingMaskIntoConstraints = false
        title.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 10).isActive = true
        title.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        subTitle.trailingAnchor.constraint(equalTo: accessoryIcon.leadingAnchor, constant: -10).isActive = true
        subTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        line.translatesAutoresizingMaskIntoConstraints = false
        line.leadingAnchor.constraint(equalTo: icon.trailingAnchor).isActive = true
        line.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        line.topAnchor.constraint(equalTo: bottomAnchor).isActive = true
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
}
