//
//  EditNotesCell.swift
//  TodayWithUIKit
//
//  Created by Krzysztof Jankowski on 31/10/2021.
//

import UIKit


class EditNotesCell: UITableViewCell {
    @IBOutlet var notesTextView: UITextView!

    func configure(notes: String?) {
        notesTextView.text = notes
    }
}
