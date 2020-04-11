//
//  CellContainSwitch.swift
//  iOSBasic.Day04.ThuNT32.Ex1
//
//  Created by GST.Fresher on 4/11/20.
//  Copyright © 2020 GST.Fresher. All rights reserved.
//

import UIKit

class CellContainSwitch: UITableViewCell {

    public weak var delegate: SwitchCase?
    
    @IBOutlet var switchCase: UISwitch!
    @IBOutlet weak var settingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
