//
//  ThirdTabViewControllerDelegat.swift
//  HW13
//
//  Created by Aliaksandr Piatrovich on 17.01.22.
//

import UIKit

extension ThirdTabViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Нажата \(data[indexPath.section].options[indexPath.row].title)")
    }
}
