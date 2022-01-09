//
//  HorizontalSectionCell.swift
//  HW13
//
//  Created by Александр Петрович on 09.01.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewHierarchy()
        setupLayout()
    }
    
    private func viewHierarchy() {
        addSubview(image)
        addSubview(nameLabel)
        addSubview(nameLabel1)
    }
    
    private func setupLayout() {
        
        image.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        image.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        image.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        image.heightAnchor.constraint(equalTo: widthAnchor, constant: -20).isActive = true
        
        let textFieldsHeight = self.frame.size.height - self.frame.size.width
        
        nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        nameLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 10).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: (textFieldsHeight / 2)).isActive = true
        
        nameLabel1.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        nameLabel1.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        nameLabel1.topAnchor.constraint(equalTo: nameLabel.bottomAnchor).isActive = true
        nameLabel1.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let image: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.systemGray
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    let image1: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.clear
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        //        label.backgroundColor = .systemGray4
        label.textColor = UIColor.black
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 1
        
        label.text = "Недавние"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let nameLabel1: UILabel = {
        let label = UILabel()
        //        label.backgroundColor = .systemGray3
        label.textColor = UIColor.systemGray
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 1
        
        label.text = "10 000"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
}
