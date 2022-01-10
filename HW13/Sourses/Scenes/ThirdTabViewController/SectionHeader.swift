//
//  SectionHeader.swift
//  HW13
//
//  Created by Александр Петрович on 09.01.2022.
//

import UIKit

class SectionHeader: UICollectionReusableView {
    
    static let reuseId = "SectionHeader"
    
    let title = UILabel()
    let line = UILabel()
     
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewHierarchy()
        setupLayout()
        setupElements()
    }
    
    private func viewHierarchy() {
        addSubview(line)
        addSubview(title)
    }
    
    private func setupLayout() {
        line.translatesAutoresizingMaskIntoConstraints = false
        line.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        line.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        line.topAnchor.constraint(equalTo: topAnchor).isActive = true
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true


        title.translatesAutoresizingMaskIntoConstraints = false
        title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        title.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 20).isActive = true
        title.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupElements() {
        title.textColor = .black
        title.font = UIFont.boldSystemFont(ofSize: 25)
        
        line.backgroundColor = UIColor.systemGray3
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
