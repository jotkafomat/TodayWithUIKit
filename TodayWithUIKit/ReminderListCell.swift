//
//  ReminderListCell.swift
//  TodayWithUIKit
//
//  Created by Krzysztof Jankowski on 17/09/2021.
//

import UIKit

class ReminderListCell: UITableViewCell {
    
    typealias DoneButtonAction = () -> Void
    
    @IBOutlet var doneButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    
    var doneButtonAction: DoneButtonAction?
    
    @IBAction func doneButtonTriggered(_ sender: UIButton) {
           doneButtonAction?()
       }
}
