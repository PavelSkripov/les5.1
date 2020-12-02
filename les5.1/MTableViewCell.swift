//
//  MTableViewCell.swift
//  les5.1
//
//  Created by Павел on 01.12.2020.
//

import UIKit
protocol MTableViewCellDelegate {
    func didButtonPressed()
}

class MTableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var titleLebel: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var openView: UIButton!
    var delegate: MTableViewCellDelegate?
    
    @IBAction func openView1(_ sender: Any) {
        
        delegate?.didButtonPressed()
        //тоже не работает
          
    }
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
