//
//  TableViewCell.swift
//  jsonParsing
//
//  Created by Harshil sureshbhai dobariya on 08/01/19.
//  Copyright © 2019 Harshil sureshbhai dobariya. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var namelable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
