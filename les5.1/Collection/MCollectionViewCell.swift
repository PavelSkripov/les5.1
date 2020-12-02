//
//  MCollectionViewCell.swift
//  les5.1
//
//  Created by Павел on 02.12.2020.
//

import UIKit

class MCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var indexLabel: UILabel!
    
    func setup(index: String) {
        indexLabel.text = "\(index)"
    }
}
