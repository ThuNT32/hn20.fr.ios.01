//
//  ViewController.swift
//  iOSBasic.Day04.ThuNT32.Ex1
//
//  Created by GST.Fresher on 4/10/20.
//  Copyright © 2020 GST.Fresher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var listTitle: [String] = ["24-Hour Time", "Set Automatically", "TimeZone", "Ha Noi"]
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var dateTimePickerView: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dateTimePickerView.isHidden = true
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CellContainSwitch", bundle: nil), forCellReuseIdentifier: "CellContainSwitch")
        tableView.register(UINib(nibName: "CellContainButton", bundle: nil), forCellReuseIdentifier: "CellContainButton")
        tableView.register(UINib(nibName: "CellShowDateTime", bundle: nil), forCellReuseIdentifier: "CellShowDateTime")
            
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 3
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellContainSwitch") as? CellContainSwitch else {
                return UITableViewCell()
            }
            if indexPath.section == 0 {
  //              self.tableView.sectionFooterHeight = 45
                cell.textLabel?.text = listTitle[0]
                cell.delegate = self
            } else {
                cell.textLabel?.text = listTitle[1]
                cell.switchCase.isOn = false
                cell.delegate = self
            }
            return cell
        } else if indexPath.row == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellContainButton") as? CellContainButton else {
                return UITableViewCell()
            }
            cell.timeZoneLabel.text = listTitle[2]
            cell.buttonRight.setTitle(listTitle[3], for: .normal)
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellShowDateTime") as? CellShowDateTime else {
                return UITableViewCell()
            }
            cell.dateLabel.text = "Date"
            cell.timeLabel.text = "Time"
//            cell.isHidden = true
            cell.tag = 100
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 && indexPath.row == 1 {            //tableView.cellForRow(at: (indexPath))?.contentView.isHidden = false
        }
        if indexPath.section == 1 && indexPath.row == 2 {
            dateTimePickerView.isHidden = false
//            let cell = tableView.dequeueReusableCell(withIdentifier: "CellShowDateTime") as? CellShowDateTime
//            }
//            cell.dateLabel.text =
//            cell.timeLabel.text =
        }
    }
}

extension ViewController: SwitchCase {
    func checkChange(_ check: Int, state: Bool) {
       
    }
    
}
