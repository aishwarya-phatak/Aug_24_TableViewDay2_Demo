//
//  FoodItemsTableViewCell.swift
//  Aug_24_TableViewDay2_Demo
//
//  Created by Vishal Jagtap on 04/10/24.
//

import UIKit

class FoodItemsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var foodItemName: UILabel!
    @IBOutlet weak var foodItemDescription: UILabel!
    @IBOutlet weak var foodItemPrice: UILabel!
    @IBOutlet weak var imageView1: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        
    }
    
}
