//
//  FirstSectionHeader.swift
//  HW13
//
//  Created by Александр Петрович on 10.01.2022.
//

import UIKit

class FirstSectionHeader: UICollectionReusableView {
    
    static let reuseId = "FirstSectionHeader"
    
    let title = UILabel()
    let line = UILabel()
    
    lazy var button: UIButton = {
        var button = UIButton()
        button.setTitleColor(.systemBlue, for: .normal)
        button.backgroundColor = UIColor.clear
        button.isEnabled = true
        button.setTitle("Все", for: .normal)
        return button
    }()
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewHierarchy()
        setupLayout()
        setupElements()
    }
    
    private func viewHierarchy() {
        addSubview(line)
        addSubview(title)
        addSubview(button)
    }
    
    private func setupLayout() {
        line.translatesAutoresizingMaskIntoConstraints = false
        line.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        line.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        line.topAnchor.constraint(equalTo: topAnchor).isActive = true
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true

        title.translatesAutoresizingMaskIntoConstraints = false
        title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        title.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 20).isActive = true
        title.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        button.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 24).isActive = true
    }
    
    private func setupElements() {
        title.textColor = .black
        title.font = UIFont.boldSystemFont(ofSize: 25)
        line.backgroundColor = .systemGray3
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 }

// MARK: - Constants

enum SectionHeaderMetric {
