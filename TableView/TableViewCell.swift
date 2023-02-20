//
//  TableViewCell.swift
//  TableView
//
//  Created by Альбина on 20.02.2023.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {
    
    static let identifiere = "TableViewCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: TableViewCell.identifiere)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
}
