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
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let icon1: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 8
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
        icon.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        icon.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        icon.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        
        icon1.translatesAutoresizingMaskIntoConstraints = false
        icon1.topAnchor.constraint(equalTo: icon.topAnchor).isActive = true
        icon1.bottomAnchor.constraint(equalTo: icon.bottomAnchor).isActive = true
        icon1.leadingAnchor.constraint(equalTo: icon.leadingAnchor).isActive = true
        icon1.trailingAnchor.constraint(equalTo: icon.trailingAnchor).isActive = true
        

                
        title.translatesAutoresizingMaskIntoConstraints = false
        title.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        title.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        title.topAnchor.constraint(equalTo: icon.bottomAnchor, constant: 5).isActive = true
        title.heightAnchor.constraint(equalToConstant: (18)).isActive = true
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        subTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        subTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        subTitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 5).isActive = true
        subTitle.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        subTitle.heightAnchor.constraint(equalToConstant: (18)).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
