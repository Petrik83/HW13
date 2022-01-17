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
        line.leadingAnchor.constraint(equalTo: leadingAnchor, constant: FirstSectionHeaderMetric.lineLeadingArchorConstant).isActive = true
        line.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        line.topAnchor.constraint(equalTo: topAnchor).isActive = true
        line.heightAnchor.constraint(equalToConstant: FirstSectionHeaderMetric.lineHeightAnchorConstant).isActive = true

        title.translatesAutoresizingMaskIntoConstraints = false
        title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: FirstSectionHeaderMetric.titleLeadingArchorConstant).isActive = true
        title.centerYAnchor.constraint(equalTo: centerYAnchor, constant: FirstSectionHeaderMetric.titleCenterYAnchorConstant).isActive = true
        title.heightAnchor.constraint(equalToConstant: FirstSectionHeaderMetric.titleHeightAnchorConstant).isActive = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: FirstSectionHeaderMetric.buttonTrailingArchorConstant).isActive = true
        button.centerYAnchor.constraint(equalTo: centerYAnchor, constant: FirstSectionHeaderMetric.buttonCenterYAnchorConstant).isActive = true
    }
    
    private func setupElements() {
        title.textColor = .black
        title.font = UIFont.boldSystemFont(ofSize: FirstSectionHeaderMetric.titleFontSize)
        line.backgroundColor = .systemGray3
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 }

// MARK: - Constants

enum FirstSectionHeaderMetric {
    static let lineLeadingArchorConstant = 10.0
    static let lineHeightAnchorConstant = 1.0
    
    static let titleLeadingArchorConstant = 10.0
    static let titleCenterYAnchorConstant = 20.0
    static let titleHeightAnchorConstant = 20.0
    static let titleFontSize = 25.0
    
    static let buttonTrailingArchorConstant = -20.0
    static let buttonCenterYAnchorConstant = 24.0
}
