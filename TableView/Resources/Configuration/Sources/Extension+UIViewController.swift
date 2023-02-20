//
//  Extension+UIViewController.swift
//  TableView
//
//  Created by Альбина on 16.02.2023.
//

import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifiere, for: indexPath) as! TableViewCell
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = String("Book -> \(names[indexPath.row])")
            cell.detailTextLabel?.text = "Shelf -> \(indexPath.section)"
            cell.imageView?.image = UIImage(systemName: "text.book.closed")
            
            return cell
        case 1:
            cell.textLabel?.text = String("Class -> \(names[indexPath.row])")
            cell.detailTextLabel?.text = "School -> \(indexPath.section)"
            cell.imageView?.image = UIImage(systemName: "graduationcap")
            return cell
        case 2:
            cell.textLabel?.text = String("Person -> \(names[indexPath.row])")
            cell.detailTextLabel?.text = "Work -> \(indexPath.section)"
            cell.imageView?.image = UIImage(systemName: "person")
            return cell
        default:
            cell.textLabel?.text = String("Item -> \(names[indexPath.row])")
            cell.detailTextLabel?.text = "Section -> \(indexPath.section)"
            cell.imageView?.image = UIImage(systemName: "calendar.circle")
            cell.selectionStyle = .none
            return cell
         }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 && indexPath.row == 0 {
            return 100
        } else {
            return 50
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let viewController = SecondViewController()
        
        switch indexPath.section {
        case 0:
            tableView.allowsSelection = true
            viewController.view.backgroundColor = .systemGreen
            navigationController?.pushViewController(viewController, animated: true)
        case 1:
            viewController.view.backgroundColor = .systemBlue
            navigationController?.pushViewController(viewController, animated: true)
        case 2:
            viewController.view.backgroundColor = .systemPurple
            navigationController?.pushViewController(viewController, animated: true)
        case 3:
            tableView.allowsSelection = false
            viewController.view.backgroundColor = .systemRed
            navigationController?.pushViewController(viewController, animated: true)
        default:
            viewController.view.backgroundColor = .white
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "BIG SECTION \(section)"
        case 3:
            return "small section \(section)"
        default:
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        
        switch section {
        case 0:
            view.backgroundColor = .systemGreen
            return view
        case 1:
            view.backgroundColor = .systemBlue
            return view
        case 2:
            view.backgroundColor = .systemPurple
            return view
        case 3:
            view.backgroundColor = .systemRed
            return view
        default:
            view.backgroundColor = .black
        }
        return view
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            tableView.beginUpdates()
            names.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
}
