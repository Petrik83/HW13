//
//  Model.swift
//  HW13
//
//  Created by Александр Петрович on 08.01.2022.
//

import UIKit

struct Item {
    
    let icon: UIImage?
    let title: String
    var detailTextLabel: String?
}

struct Section {
    
    enum SectionType {
        case oneRollHorisontalView
        case twoRollHorisontalView
        case verticalView
    }
    
    let type: SectionType
    let title: String
    var options: [Item]
}

extension Section {
    static func getData() -> [Section] {
        return [
            Section(type: .twoRollHorisontalView, title: "Мои альбомы", options: [
                Item(icon: UIImage(named: "image0"), title: "Недавние", detailTextLabel: "1 432"),
                Item(icon: UIImage(named: "image1"), title: "Instagram", detailTextLabel: "104"),
                Item(icon: UIImage(named: "image2"), title: "xiaoyi", detailTextLabel: "14"),
                Item(icon: UIImage(named: "image3"), title: "Избранное", detailTextLabel: "115"),
                Item(icon: UIImage(named: "image4"), title: "WhatsApp", detailTextLabel: "45"),
                Item(icon: UIImage(named: "image5"), title: "Dropbox", detailTextLabel: "4")
            ]),
            Section(type: .oneRollHorisontalView, title: "Общие места", options: [
                Item(icon: UIImage(named: "image6"), title: "Недавние", detailTextLabel: "1 432"),
                Item(icon: UIImage(named: "image7"), title: "Instagram", detailTextLabel: "104"),
                Item(icon: UIImage(named: "image8"), title: "xiaoyi", detailTextLabel: "14"),
                Item(icon: UIImage(named: "image9"), title: "Избранное", detailTextLabel: "115")
            ]),
            Section(type: .verticalView, title: "Типы медиафайлов", options: [
                Item(icon: UIImage(named: "image6"), title: "Видео", detailTextLabel: "432"),
                Item(icon: UIImage(named: "image7"), title: "Селфи", detailTextLabel: "57"),
                Item(icon: UIImage(named: "image8"), title: "Портреты", detailTextLabel: "14"),
                Item(icon: UIImage(named: "image9"), title: "Панорамы", detailTextLabel: "1")
            ])
            
        ]}
}
