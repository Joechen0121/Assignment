//
//  TableViewCell.swift
//  TableView
//
//  Created by 陳建綸 on 2022/8/29.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    let identifier = String(describing: TableViewCell.self)
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
