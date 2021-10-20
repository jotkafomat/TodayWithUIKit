//
//  ViewController.swift
//  TodayWithUIKit
//
//  Created by Krzysztof Jankowski on 17/09/2021.
//

import UIKit

class ReminderListViewController: UITableViewController {
    private var reminderListDataSource: ReminderListDataSource?
    override func viewDidLoad() {
        super.viewDidLoad()
        reminderListDataSource = ReminderListDataSource()
        tableView.dataSource = reminderListDataSource
    }
}

extension ReminderListViewController {
    
    static let reminderListCellIdentifier = "ReminderListCell"
    static let showDetailSegueIdentifier = "ShowReminderDetailSegue"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Self.showDetailSegueIdentifier,
           let destination = segue.destination as? ReminderDetailViewController,
           let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            let reminder = Reminder.testData[indexPath.row]
            destination.configure(with: reminder)
        }
    }
}
