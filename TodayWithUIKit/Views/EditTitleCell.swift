//
//  EditTitleCell.swift
//  TodayWithUIKit
//
//  Created by Krzysztof Jankowski on 31/10/2021.
//

import UIKit

class EditTitleCell: UITableViewCell {
    @IBOutlet var titleTextField: UITextField!
    
    func configure(title: String) {
           titleTextField.text = title
       }
}
