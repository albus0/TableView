//
//  ViewController.swift
//  TableView
//
//  Created by Альбина on 16.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var names = ["One", "Two", "Three", "Four", "Five", "One", "Two", "Three", "Four", "Five"]
    
    //MARK: - Outlets
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifiere)
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    
//    private lazy var textField: UITextField = {
//        let textField = UITextField()
//        textField.placeholder = "Type name here..."
//        textField.clipsToBounds = true
//        textField.layer.cornerRadius = 20
//        textField.backgroundColor = .systemPink
//        return textField
//    }()
//
//    private lazy var button: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Type your nickname", for: .normal)
//        button.setTitleColor(UIColor.white, for: .normal)
//        button.backgroundColor = .black
//        button.clipsToBounds = true
//        button.layer.cornerRadius = 20
//        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
//        return button
//    }()
    
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "TableView"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(tableView)
//        view.addSubview(textField)
//        view.addSubview(button)
    }
    
    private func setupLayout() {
        
        tableView.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(view)
        }
        
//        textField.snp.makeConstraints { make in
//            make.centerX.equalTo(view)
//            make.centerY.equalTo(view).offset(-330)
//            make.left.equalTo(view).offset(20)
//            make.right.equalTo(view).offset(-20)
//            make.height.equalTo(60)
//        }
//
//        button.snp.makeConstraints { make in
//            make.centerX.equalTo(view)
//            make.height.equalTo(50)
//            make.width.equalTo(200)
//            make.top.equalTo(textField.snp.bottom).offset(20)
//        }
    }
    
//    @objc func buttonPressed() {
//
//    }
}

