//
//  EditDateCell.swift
//  TodayWithUIKit
//
//  Created by Krzysztof Jankowski on 31/10/2021.
//

import UIKit

class EditDateCell: UITableViewCell {
    @IBOutlet var datePicker: UIDatePicker!

    func configure(date: Date) {
        datePicker.date = date
    }
    
}
